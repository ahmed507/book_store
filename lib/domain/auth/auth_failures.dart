import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezed
abstract class AuthFailure<T> with _$AuthFailure<T> {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;

  const factory AuthFailure.serverError() = ServerError;

  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;

  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}

String authErrorHandling(AuthFailure failure) {
  return failure.when(
    emailAlreadyInUse: () => 'Email already in use',
    serverError: () => 'Server error',
    invalidEmailAndPasswordCombination: () =>
        'Invalid email and password combination',
    cancelledByUser: () => 'Cancelled by user',
  );
}
