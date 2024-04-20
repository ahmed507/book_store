import 'package:book_shop/domain/auth/auth_failures.dart';
import 'package:book_shop/domain/auth/user.dart';
import 'package:book_shop/domain/auth/value_object.dart';
import 'package:book_shop/domain/core/failures.dart';
import 'package:book_shop/domain/core/value_objects.dart';
import 'package:fpdart/fpdart.dart';

abstract class IAuthFacade {
  Future<Either<FireStoreFailure, Option<UserModel>>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Name name,
    required EmailAddress emailAddress,
    required ValueObject password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required ValueObject password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
