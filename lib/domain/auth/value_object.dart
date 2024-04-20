import 'package:book_shop/domain/core/failures.dart';
import 'package:book_shop/domain/core/value_objects.dart';
import 'package:book_shop/domain/core/value_validators.dart';
import 'package:fpdart/fpdart.dart';

class EmailAddress extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress({required String input}) {
    return EmailAddress._(value: validateEmail(input: input));
  }

  const EmailAddress._({required this.value});
}

class SignInPassword extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SignInPassword({required String input}) {
    return SignInPassword._(value: validateSignInPassword(input: input));
  }

  const SignInPassword._({required this.value});
}

class RegisterPassword extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RegisterPassword({required String input}) {
    return RegisterPassword._(value: validateRegisterPassword(input: input));
  }

  const RegisterPassword._({required this.value});
}

class RegisterConfirmPassword extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RegisterConfirmPassword(
      {required String input, required String password}) {
    return RegisterConfirmPassword._(
        value: validateConfirmPassword(input: input, password: password));
  }

  const RegisterConfirmPassword._({required this.value});
}

class Name extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name({required String input}) {
    return Name._(value: validateName(input: input));
  }

  const Name._({required this.value});
}
