// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyInUse<T> value) emailAlreadyInUse,
    required TResult Function(InvalidEmailAndPasswordCombination<T> value)
        invalidEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser<T> value)? cancelledByUser,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(EmailAlreadyInUse<T> value)? emailAlreadyInUse,
    TResult? Function(InvalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyInUse<T> value)? emailAlreadyInUse,
    TResult Function(InvalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<T, $Res> {
  factory $AuthFailureCopyWith(
          AuthFailure<T> value, $Res Function(AuthFailure<T>) then) =
      _$AuthFailureCopyWithImpl<T, $Res, AuthFailure<T>>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<T, $Res, $Val extends AuthFailure<T>>
    implements $AuthFailureCopyWith<T, $Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CancelledByUserImplCopyWith<T, $Res> {
  factory _$$CancelledByUserImplCopyWith(_$CancelledByUserImpl<T> value,
          $Res Function(_$CancelledByUserImpl<T>) then) =
      __$$CancelledByUserImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CancelledByUserImplCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res, _$CancelledByUserImpl<T>>
    implements _$$CancelledByUserImplCopyWith<T, $Res> {
  __$$CancelledByUserImplCopyWithImpl(_$CancelledByUserImpl<T> _value,
      $Res Function(_$CancelledByUserImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelledByUserImpl<T> implements CancelledByUser<T> {
  const _$CancelledByUserImpl();

  @override
  String toString() {
    return 'AuthFailure<$T>.cancelledByUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelledByUserImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) {
    return cancelledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyInUse<T> value) emailAlreadyInUse,
    required TResult Function(InvalidEmailAndPasswordCombination<T> value)
        invalidEmailAndPasswordCombination,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser<T> value)? cancelledByUser,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(EmailAlreadyInUse<T> value)? emailAlreadyInUse,
    TResult? Function(InvalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
  }) {
    return cancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyInUse<T> value)? emailAlreadyInUse,
    TResult Function(InvalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser<T> implements AuthFailure<T> {
  const factory CancelledByUser() = _$CancelledByUserImpl<T>;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<T, $Res> {
  factory _$$ServerErrorImplCopyWith(_$ServerErrorImpl<T> value,
          $Res Function(_$ServerErrorImpl<T>) then) =
      __$$ServerErrorImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res, _$ServerErrorImpl<T>>
    implements _$$ServerErrorImplCopyWith<T, $Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl<T> _value, $Res Function(_$ServerErrorImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerErrorImpl<T> implements ServerError<T> {
  const _$ServerErrorImpl();

  @override
  String toString() {
    return 'AuthFailure<$T>.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyInUse<T> value) emailAlreadyInUse,
    required TResult Function(InvalidEmailAndPasswordCombination<T> value)
        invalidEmailAndPasswordCombination,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser<T> value)? cancelledByUser,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(EmailAlreadyInUse<T> value)? emailAlreadyInUse,
    TResult? Function(InvalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyInUse<T> value)? emailAlreadyInUse,
    TResult Function(InvalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError<T> implements AuthFailure<T> {
  const factory ServerError() = _$ServerErrorImpl<T>;
}

/// @nodoc
abstract class _$$EmailAlreadyInUseImplCopyWith<T, $Res> {
  factory _$$EmailAlreadyInUseImplCopyWith(_$EmailAlreadyInUseImpl<T> value,
          $Res Function(_$EmailAlreadyInUseImpl<T>) then) =
      __$$EmailAlreadyInUseImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmailAlreadyInUseImplCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res, _$EmailAlreadyInUseImpl<T>>
    implements _$$EmailAlreadyInUseImplCopyWith<T, $Res> {
  __$$EmailAlreadyInUseImplCopyWithImpl(_$EmailAlreadyInUseImpl<T> _value,
      $Res Function(_$EmailAlreadyInUseImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailAlreadyInUseImpl<T> implements EmailAlreadyInUse<T> {
  const _$EmailAlreadyInUseImpl();

  @override
  String toString() {
    return 'AuthFailure<$T>.emailAlreadyInUse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailAlreadyInUseImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) {
    return emailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyInUse<T> value) emailAlreadyInUse,
    required TResult Function(InvalidEmailAndPasswordCombination<T> value)
        invalidEmailAndPasswordCombination,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser<T> value)? cancelledByUser,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(EmailAlreadyInUse<T> value)? emailAlreadyInUse,
    TResult? Function(InvalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyInUse<T> value)? emailAlreadyInUse,
    TResult Function(InvalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse<T> implements AuthFailure<T> {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUseImpl<T>;
}

/// @nodoc
abstract class _$$InvalidEmailAndPasswordCombinationImplCopyWith<T, $Res> {
  factory _$$InvalidEmailAndPasswordCombinationImplCopyWith(
          _$InvalidEmailAndPasswordCombinationImpl<T> value,
          $Res Function(_$InvalidEmailAndPasswordCombinationImpl<T>) then) =
      __$$InvalidEmailAndPasswordCombinationImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InvalidEmailAndPasswordCombinationImplCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res,
        _$InvalidEmailAndPasswordCombinationImpl<T>>
    implements _$$InvalidEmailAndPasswordCombinationImplCopyWith<T, $Res> {
  __$$InvalidEmailAndPasswordCombinationImplCopyWithImpl(
      _$InvalidEmailAndPasswordCombinationImpl<T> _value,
      $Res Function(_$InvalidEmailAndPasswordCombinationImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidEmailAndPasswordCombinationImpl<T>
    implements InvalidEmailAndPasswordCombination<T> {
  const _$InvalidEmailAndPasswordCombinationImpl();

  @override
  String toString() {
    return 'AuthFailure<$T>.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailAndPasswordCombinationImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) {
    return invalidEmailAndPasswordCombination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyInUse<T> value) emailAlreadyInUse,
    required TResult Function(InvalidEmailAndPasswordCombination<T> value)
        invalidEmailAndPasswordCombination,
  }) {
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser<T> value)? cancelledByUser,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(EmailAlreadyInUse<T> value)? emailAlreadyInUse,
    TResult? Function(InvalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
  }) {
    return invalidEmailAndPasswordCombination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyInUse<T> value)? emailAlreadyInUse,
    TResult Function(InvalidEmailAndPasswordCombination<T> value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombination<T> implements AuthFailure<T> {
  const factory InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombinationImpl<T>;
}
