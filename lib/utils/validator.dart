import 'package:book_shop/generated/l10n.dart';

class Validators {
  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.required_email;
    }
    if (!RegExp(r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)")
        .hasMatch(value)) {
      return S.current.invalid_email;
    }
    return null;
  }

  static String? passwordValidatorSignUp(
      {String? value, String? confirmPassword}) {
    if (value == null || value.isEmpty) {
      return S.current.required_password;
    }
    // regex to check if the password contains at least one uppercase letter.
    if (!RegExp(r'^(?=.*?[A-Z])').hasMatch(value)) {
      return S.current.password_uppercase;
    }
    // regex to check if the password contains at least one lowercase letter.
    if (!RegExp(r'^(?=.*?[a-z])').hasMatch(value)) {
      return S.current.password_lowercase;
    }
    // regex to check if the password contains at least one digit.
    if (!RegExp(r'^(?=.*?[0-9])').hasMatch(value)) {
      return S.current.password_digit;
    }
    // regex to check if the password contains at least one special character.
    if (!RegExp(r'^(?=.*?[!@#$&*~])').hasMatch(value)) {
      return S.current.password_special;
    }
    if (value.length < 8) {
      return S.current.password_length;
    }
    if (value != confirmPassword) {
      return S.current.password_does_not_match;
    }

    return null;
  }

  static String? passwordValidatorLogin(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.required_password;
    }
    return null;
  }

  static String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.name_required;
    }
    if (value.length < 3) {
      return S.current.name_length;
    }
    return null;
  }
}
