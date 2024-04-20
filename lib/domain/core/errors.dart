import 'package:book_shop/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError({required this.valueFailure});

  @override
  String toString() {
    return 'UnexpectedValueError{valueFailure: $valueFailure}';
  }
}

class NotAuthenticatedError extends Error {}
