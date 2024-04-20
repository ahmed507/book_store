import 'package:firebase_auth/firebase_auth.dart';

class AuthState {
  late bool isLoading;
  late String? errorMessage;
  late User? user;

  AuthState() {
    isLoading = false;
    errorMessage = null;
    user = null;
  }
}
