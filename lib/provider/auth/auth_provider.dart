import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'auth_state.dart';

class AuthProvider extends ChangeNotifier {
  final AuthState state = AuthState();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  AuthProvider() {
    _auth.authStateChanges().listen((User? user) {
      state.user = user;
      notifyListeners();
    });
  }

  // Method to handle user sign in using Google
  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      final UserCredential authResult =
          await _auth.signInWithCredential(credential);
      final User? user = authResult.user;
      if (user != null) {
        state.user = user;
        notifyListeners();
      }
    } catch (e) {
      state.isLoading = false;
      state.errorMessage = e.toString();
      notifyListeners();
    }
  }

  // Method to handle user sign in using email and password
  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      setLoading(true);
      final UserCredential authResult = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final User? user = authResult.user;
      if (user != null) {
        state.user = user;
        notifyListeners();
      }
      setLoading(false);
    } catch (e) {
      state.isLoading = false;
      state.errorMessage = e.toString();
      notifyListeners();
    }
  }

  // Method to handle user registration using email and password
  Future<void> registerWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      setLoading(true);
      final UserCredential authResult =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final User? user = authResult.user;
      if (user != null) {
        await user.updateDisplayName(name);
        state.user = user;
        notifyListeners();
      }
      setLoading(false);
    } catch (e) {
      state.isLoading = false;
      state.errorMessage = e.toString();
      notifyListeners();
    }
  }

  // Method to handle user sign out
  Future<void> signOut() async {
    try {
      setLoading(true);
      await _googleSignIn.signOut();
      await _auth.signOut();
      setLoading(false);
      state.user = null;
      notifyListeners();
    } catch (e) {
      state.isLoading = false;
      state.errorMessage = e.toString();
      notifyListeners();
    }
  }

  void setLoading(bool val) {
    state.isLoading = val;
    notifyListeners();
  }
}
