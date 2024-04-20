import 'package:book_shop/domain/core/errors.dart';
import 'package:book_shop/domain/core/failures.dart';
import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

abstract class ValueObject<T> extends Equatable {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    // id =  (right) => right
    return value.fold(
        (f) => throw UnexpectedValueError(valueFailure: f), identity);
  }

  @override
  List<Object> get props => [value];

  bool isValid() {
    return value.isRight();
  }
}
