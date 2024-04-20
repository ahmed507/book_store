import 'package:book_shop/domain/core/failures.dart';
import 'package:fpdart/fpdart.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty({
  required String input,
}) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateEmail({required String input}) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else if (!RegExp(r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)")
      .hasMatch(input)) {
    return left(ValueFailure.invalidEmail(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSignInPassword(
    {required String input}) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
    // } else if (input.length < 6) {
    //   return left(ValueFailure.shortPassword(failedValue: input));
    // } else if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~])')
    //     .hasMatch(input)) {
    //   return left(ValueFailure.weakPassword(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateRegisterPassword(
    {required String input}) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else if (input.length < 8) {
    return left(ValueFailure.shortPassword(failedValue: input));
  } else if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~])')
      .hasMatch(input)) {
    return left(ValueFailure.weakPassword(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateConfirmPassword(
    {required String input, required String password}) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else if (input != password) {
    return left(ValueFailure.passwordsDoNotMatch(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateName({required String input}) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else if (input.length < 3) {
    return left(ValueFailure.shortName(failedValue: input));
  } else {
    return right(input);
  }
}
