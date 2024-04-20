import 'package:book_shop/domain/auth/auth_failures.dart';
import 'package:book_shop/domain/auth/i_auth_facade.dart';
import 'package:book_shop/domain/auth/user.dart';
import 'package:book_shop/domain/auth/value_object.dart';
import 'package:book_shop/domain/core/failures.dart';
import 'package:book_shop/domain/core/i_fire_store_service.dart';
import 'package:book_shop/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  final IFireStoreService _fireStoreService;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._fireStoreService,
  );

  @override
  Future<Either<FireStoreFailure, Option<UserModel>>> getSignedInUser() async {
    print(
        'getSignedInUser called from firebase_auth_facade.dart ${_firebaseAuth.currentUser!.uid}');
    if (_firebaseAuth.currentUser == null) {
      return left(const FireStoreFailure.notFound());
    }
    final user =
        await _fireStoreService.getUser(_firebaseAuth.currentUser!.uid);
    return user.fold((l) => left(l), (r) => right(optionOf(r)));
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Name name,
    required EmailAddress emailAddress,
    required ValueObject password,
  }) async {
    final String emailStr = emailAddress.getOrCrash();
    final String passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth
          .createUserWithEmailAndPassword(
              email: emailStr, password: passwordStr)
          .then((user) async {
        await user.user!.updateDisplayName(name.getOrCrash());
        await _fireStoreService.createUser(UserModel(
          id: user.user!.uid,
          email: user.user!.email!,
          name: name.getOrCrash(),
        ));
      });
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required ValueObject password,
  }) async {
    final String emailStr = emailAddress.getOrCrash();
    final String passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailStr, password: passwordStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' ||
          e.code == 'wrong-password' ||
          e.code == 'invalid-email' ||
          e.code == 'invalid-credential') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuth = await googleUser.authentication;
      final googleCred = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      await _firebaseAuth.signInWithCredential(googleCred);
      return right(unit);
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }
}
