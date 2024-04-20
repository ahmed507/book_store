import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({required T failedValue}) = Empty<T>;

  const factory ValueFailure.invalidEmail({required T failedValue}) =
      InvalidEmail<T>;

  const factory ValueFailure.weakPassword({required T failedValue}) =
      WeakPassword<T>;

  const factory ValueFailure.shortPassword({required T failedValue}) =
      ShortPassword<T>;

  const factory ValueFailure.passwordsDoNotMatch({required T failedValue}) =
      PasswordsDoNotMatch<T>;

  const factory ValueFailure.shortName({required T failedValue}) = ShortName<T>;
}

@freezed
abstract class FireStoreFailure with _$FireStoreFailure {
  const factory FireStoreFailure.serverError() = ServerError;

  const factory FireStoreFailure.unexpected() = Unexpected;

  const factory FireStoreFailure.insufficientPermission() =
      InsufficientPermission;

  const factory FireStoreFailure.unableToUpdate() = UnableToUpdate;

  const factory FireStoreFailure.notFound() = NotFound;
}

String fireStoreErrorHandling(FireStoreFailure failure) {
  return failure.when(
      serverError: () => 'Server error',
      unexpected: () => 'Unexpected error',
      insufficientPermission: () => 'Insufficient permission',
      unableToUpdate: () => 'Unable to update',
      notFound: () => 'Not found');
}
