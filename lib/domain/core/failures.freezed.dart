// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) weakPassword,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDoNotMatch,
    required TResult Function(T failedValue) shortName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? weakPassword,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordsDoNotMatch,
    TResult? Function(T failedValue)? shortName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDoNotMatch,
    TResult Function(T failedValue)? shortName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(WeakPassword<T> value) weakPassword,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDoNotMatch<T> value) passwordsDoNotMatch,
    required TResult Function(ShortName<T> value) shortName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(WeakPassword<T> value)? weakPassword,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult? Function(ShortName<T> value)? shortName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult Function(ShortName<T> value)? shortName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl<T> value, $Res Function(_$EmptyImpl<T>) then) =
      __$$EmptyImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyImpl<T>>
    implements _$$EmptyImplCopyWith<T, $Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl<T> _value, $Res Function(_$EmptyImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$EmptyImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyImpl<T> implements Empty<T> {
  const _$EmptyImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      __$$EmptyImplCopyWithImpl<T, _$EmptyImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) weakPassword,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDoNotMatch,
    required TResult Function(T failedValue) shortName,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? weakPassword,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordsDoNotMatch,
    TResult? Function(T failedValue)? shortName,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDoNotMatch,
    TResult Function(T failedValue)? shortName,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(WeakPassword<T> value) weakPassword,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDoNotMatch<T> value) passwordsDoNotMatch,
    required TResult Function(ShortName<T> value) shortName,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(WeakPassword<T> value)? weakPassword,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult? Function(ShortName<T> value)? shortName,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult Function(ShortName<T> value)? shortName,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required final T failedValue}) = _$EmptyImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailImplCopyWith(_$InvalidEmailImpl<T> value,
          $Res Function(_$InvalidEmailImpl<T>) then) =
      __$$InvalidEmailImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidEmailImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEmailImpl<T>>
    implements _$$InvalidEmailImplCopyWith<T, $Res> {
  __$$InvalidEmailImplCopyWithImpl(
      _$InvalidEmailImpl<T> _value, $Res Function(_$InvalidEmailImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmailImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmailImpl<T> implements InvalidEmail<T> {
  const _$InvalidEmailImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      __$$InvalidEmailImplCopyWithImpl<T, _$InvalidEmailImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) weakPassword,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDoNotMatch,
    required TResult Function(T failedValue) shortName,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? weakPassword,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordsDoNotMatch,
    TResult? Function(T failedValue)? shortName,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDoNotMatch,
    TResult Function(T failedValue)? shortName,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(WeakPassword<T> value) weakPassword,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDoNotMatch<T> value) passwordsDoNotMatch,
    required TResult Function(ShortName<T> value) shortName,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(WeakPassword<T> value)? weakPassword,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult? Function(ShortName<T> value)? shortName,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult Function(ShortName<T> value)? shortName,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required final T failedValue}) =
      _$InvalidEmailImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeakPasswordImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$WeakPasswordImplCopyWith(_$WeakPasswordImpl<T> value,
          $Res Function(_$WeakPasswordImpl<T>) then) =
      __$$WeakPasswordImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$WeakPasswordImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$WeakPasswordImpl<T>>
    implements _$$WeakPasswordImplCopyWith<T, $Res> {
  __$$WeakPasswordImplCopyWithImpl(
      _$WeakPasswordImpl<T> _value, $Res Function(_$WeakPasswordImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$WeakPasswordImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$WeakPasswordImpl<T> implements WeakPassword<T> {
  const _$WeakPasswordImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.weakPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeakPasswordImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeakPasswordImplCopyWith<T, _$WeakPasswordImpl<T>> get copyWith =>
      __$$WeakPasswordImplCopyWithImpl<T, _$WeakPasswordImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) weakPassword,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDoNotMatch,
    required TResult Function(T failedValue) shortName,
  }) {
    return weakPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? weakPassword,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordsDoNotMatch,
    TResult? Function(T failedValue)? shortName,
  }) {
    return weakPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDoNotMatch,
    TResult Function(T failedValue)? shortName,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(WeakPassword<T> value) weakPassword,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDoNotMatch<T> value) passwordsDoNotMatch,
    required TResult Function(ShortName<T> value) shortName,
  }) {
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(WeakPassword<T> value)? weakPassword,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult? Function(ShortName<T> value)? shortName,
  }) {
    return weakPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult Function(ShortName<T> value)? shortName,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }
}

abstract class WeakPassword<T> implements ValueFailure<T> {
  const factory WeakPassword({required final T failedValue}) =
      _$WeakPasswordImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$WeakPasswordImplCopyWith<T, _$WeakPasswordImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortPasswordImplCopyWith(_$ShortPasswordImpl<T> value,
          $Res Function(_$ShortPasswordImpl<T>) then) =
      __$$ShortPasswordImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ShortPasswordImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortPasswordImpl<T>>
    implements _$$ShortPasswordImplCopyWith<T, $Res> {
  __$$ShortPasswordImplCopyWithImpl(_$ShortPasswordImpl<T> _value,
      $Res Function(_$ShortPasswordImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortPasswordImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPasswordImpl<T> implements ShortPassword<T> {
  const _$ShortPasswordImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPasswordImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortPasswordImplCopyWith<T, _$ShortPasswordImpl<T>> get copyWith =>
      __$$ShortPasswordImplCopyWithImpl<T, _$ShortPasswordImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) weakPassword,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDoNotMatch,
    required TResult Function(T failedValue) shortName,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? weakPassword,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordsDoNotMatch,
    TResult? Function(T failedValue)? shortName,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDoNotMatch,
    TResult Function(T failedValue)? shortName,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(WeakPassword<T> value) weakPassword,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDoNotMatch<T> value) passwordsDoNotMatch,
    required TResult Function(ShortName<T> value) shortName,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(WeakPassword<T> value)? weakPassword,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult? Function(ShortName<T> value)? shortName,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult Function(ShortName<T> value)? shortName,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required final T failedValue}) =
      _$ShortPasswordImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ShortPasswordImplCopyWith<T, _$ShortPasswordImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordsDoNotMatchImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$PasswordsDoNotMatchImplCopyWith(_$PasswordsDoNotMatchImpl<T> value,
          $Res Function(_$PasswordsDoNotMatchImpl<T>) then) =
      __$$PasswordsDoNotMatchImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$PasswordsDoNotMatchImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$PasswordsDoNotMatchImpl<T>>
    implements _$$PasswordsDoNotMatchImplCopyWith<T, $Res> {
  __$$PasswordsDoNotMatchImplCopyWithImpl(_$PasswordsDoNotMatchImpl<T> _value,
      $Res Function(_$PasswordsDoNotMatchImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$PasswordsDoNotMatchImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PasswordsDoNotMatchImpl<T> implements PasswordsDoNotMatch<T> {
  const _$PasswordsDoNotMatchImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.passwordsDoNotMatch(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordsDoNotMatchImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordsDoNotMatchImplCopyWith<T, _$PasswordsDoNotMatchImpl<T>>
      get copyWith => __$$PasswordsDoNotMatchImplCopyWithImpl<T,
          _$PasswordsDoNotMatchImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) weakPassword,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDoNotMatch,
    required TResult Function(T failedValue) shortName,
  }) {
    return passwordsDoNotMatch(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? weakPassword,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordsDoNotMatch,
    TResult? Function(T failedValue)? shortName,
  }) {
    return passwordsDoNotMatch?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDoNotMatch,
    TResult Function(T failedValue)? shortName,
    required TResult orElse(),
  }) {
    if (passwordsDoNotMatch != null) {
      return passwordsDoNotMatch(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(WeakPassword<T> value) weakPassword,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDoNotMatch<T> value) passwordsDoNotMatch,
    required TResult Function(ShortName<T> value) shortName,
  }) {
    return passwordsDoNotMatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(WeakPassword<T> value)? weakPassword,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult? Function(ShortName<T> value)? shortName,
  }) {
    return passwordsDoNotMatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult Function(ShortName<T> value)? shortName,
    required TResult orElse(),
  }) {
    if (passwordsDoNotMatch != null) {
      return passwordsDoNotMatch(this);
    }
    return orElse();
  }
}

abstract class PasswordsDoNotMatch<T> implements ValueFailure<T> {
  const factory PasswordsDoNotMatch({required final T failedValue}) =
      _$PasswordsDoNotMatchImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$PasswordsDoNotMatchImplCopyWith<T, _$PasswordsDoNotMatchImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortNameImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortNameImplCopyWith(
          _$ShortNameImpl<T> value, $Res Function(_$ShortNameImpl<T>) then) =
      __$$ShortNameImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ShortNameImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortNameImpl<T>>
    implements _$$ShortNameImplCopyWith<T, $Res> {
  __$$ShortNameImplCopyWithImpl(
      _$ShortNameImpl<T> _value, $Res Function(_$ShortNameImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortNameImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortNameImpl<T> implements ShortName<T> {
  const _$ShortNameImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortName(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortNameImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortNameImplCopyWith<T, _$ShortNameImpl<T>> get copyWith =>
      __$$ShortNameImplCopyWithImpl<T, _$ShortNameImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) weakPassword,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordsDoNotMatch,
    required TResult Function(T failedValue) shortName,
  }) {
    return shortName(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? weakPassword,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordsDoNotMatch,
    TResult? Function(T failedValue)? shortName,
  }) {
    return shortName?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? weakPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordsDoNotMatch,
    TResult Function(T failedValue)? shortName,
    required TResult orElse(),
  }) {
    if (shortName != null) {
      return shortName(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(WeakPassword<T> value) weakPassword,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(PasswordsDoNotMatch<T> value) passwordsDoNotMatch,
    required TResult Function(ShortName<T> value) shortName,
  }) {
    return shortName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(WeakPassword<T> value)? weakPassword,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult? Function(ShortName<T> value)? shortName,
  }) {
    return shortName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(WeakPassword<T> value)? weakPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(PasswordsDoNotMatch<T> value)? passwordsDoNotMatch,
    TResult Function(ShortName<T> value)? shortName,
    required TResult orElse(),
  }) {
    if (shortName != null) {
      return shortName(this);
    }
    return orElse();
  }
}

abstract class ShortName<T> implements ValueFailure<T> {
  const factory ShortName({required final T failedValue}) = _$ShortNameImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ShortNameImplCopyWith<T, _$ShortNameImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FireStoreFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermission,
    TResult? Function()? unableToUpdate,
    TResult? Function()? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermission value)
        insufficientPermission,
    required TResult Function(UnableToUpdate value) unableToUpdate,
    required TResult Function(NotFound value) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(InsufficientPermission value)? insufficientPermission,
    TResult? Function(UnableToUpdate value)? unableToUpdate,
    TResult? Function(NotFound value)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermission value)? insufficientPermission,
    TResult Function(UnableToUpdate value)? unableToUpdate,
    TResult Function(NotFound value)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FireStoreFailureCopyWith<$Res> {
  factory $FireStoreFailureCopyWith(
          FireStoreFailure value, $Res Function(FireStoreFailure) then) =
      _$FireStoreFailureCopyWithImpl<$Res, FireStoreFailure>;
}

/// @nodoc
class _$FireStoreFailureCopyWithImpl<$Res, $Val extends FireStoreFailure>
    implements $FireStoreFailureCopyWith<$Res> {
  _$FireStoreFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$FireStoreFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerErrorImpl implements ServerError {
  const _$ServerErrorImpl();

  @override
  String toString() {
    return 'FireStoreFailure.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() notFound,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermission,
    TResult? Function()? unableToUpdate,
    TResult? Function()? notFound,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? notFound,
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
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermission value)
        insufficientPermission,
    required TResult Function(UnableToUpdate value) unableToUpdate,
    required TResult Function(NotFound value) notFound,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(InsufficientPermission value)? insufficientPermission,
    TResult? Function(UnableToUpdate value)? unableToUpdate,
    TResult? Function(NotFound value)? notFound,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermission value)? insufficientPermission,
    TResult Function(UnableToUpdate value)? unableToUpdate,
    TResult Function(NotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements FireStoreFailure {
  const factory ServerError() = _$ServerErrorImpl;
}

/// @nodoc
abstract class _$$UnexpectedImplCopyWith<$Res> {
  factory _$$UnexpectedImplCopyWith(
          _$UnexpectedImpl value, $Res Function(_$UnexpectedImpl) then) =
      __$$UnexpectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedImplCopyWithImpl<$Res>
    extends _$FireStoreFailureCopyWithImpl<$Res, _$UnexpectedImpl>
    implements _$$UnexpectedImplCopyWith<$Res> {
  __$$UnexpectedImplCopyWithImpl(
      _$UnexpectedImpl _value, $Res Function(_$UnexpectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnexpectedImpl implements Unexpected {
  const _$UnexpectedImpl();

  @override
  String toString() {
    return 'FireStoreFailure.unexpected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() notFound,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermission,
    TResult? Function()? unableToUpdate,
    TResult? Function()? notFound,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermission value)
        insufficientPermission,
    required TResult Function(UnableToUpdate value) unableToUpdate,
    required TResult Function(NotFound value) notFound,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(InsufficientPermission value)? insufficientPermission,
    TResult? Function(UnableToUpdate value)? unableToUpdate,
    TResult? Function(NotFound value)? notFound,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermission value)? insufficientPermission,
    TResult Function(UnableToUpdate value)? unableToUpdate,
    TResult Function(NotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements FireStoreFailure {
  const factory Unexpected() = _$UnexpectedImpl;
}

/// @nodoc
abstract class _$$InsufficientPermissionImplCopyWith<$Res> {
  factory _$$InsufficientPermissionImplCopyWith(
          _$InsufficientPermissionImpl value,
          $Res Function(_$InsufficientPermissionImpl) then) =
      __$$InsufficientPermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InsufficientPermissionImplCopyWithImpl<$Res>
    extends _$FireStoreFailureCopyWithImpl<$Res, _$InsufficientPermissionImpl>
    implements _$$InsufficientPermissionImplCopyWith<$Res> {
  __$$InsufficientPermissionImplCopyWithImpl(
      _$InsufficientPermissionImpl _value,
      $Res Function(_$InsufficientPermissionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InsufficientPermissionImpl implements InsufficientPermission {
  const _$InsufficientPermissionImpl();

  @override
  String toString() {
    return 'FireStoreFailure.insufficientPermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsufficientPermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() notFound,
  }) {
    return insufficientPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermission,
    TResult? Function()? unableToUpdate,
    TResult? Function()? notFound,
  }) {
    return insufficientPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (insufficientPermission != null) {
      return insufficientPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermission value)
        insufficientPermission,
    required TResult Function(UnableToUpdate value) unableToUpdate,
    required TResult Function(NotFound value) notFound,
  }) {
    return insufficientPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(InsufficientPermission value)? insufficientPermission,
    TResult? Function(UnableToUpdate value)? unableToUpdate,
    TResult? Function(NotFound value)? notFound,
  }) {
    return insufficientPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermission value)? insufficientPermission,
    TResult Function(UnableToUpdate value)? unableToUpdate,
    TResult Function(NotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (insufficientPermission != null) {
      return insufficientPermission(this);
    }
    return orElse();
  }
}

abstract class InsufficientPermission implements FireStoreFailure {
  const factory InsufficientPermission() = _$InsufficientPermissionImpl;
}

/// @nodoc
abstract class _$$UnableToUpdateImplCopyWith<$Res> {
  factory _$$UnableToUpdateImplCopyWith(_$UnableToUpdateImpl value,
          $Res Function(_$UnableToUpdateImpl) then) =
      __$$UnableToUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnableToUpdateImplCopyWithImpl<$Res>
    extends _$FireStoreFailureCopyWithImpl<$Res, _$UnableToUpdateImpl>
    implements _$$UnableToUpdateImplCopyWith<$Res> {
  __$$UnableToUpdateImplCopyWithImpl(
      _$UnableToUpdateImpl _value, $Res Function(_$UnableToUpdateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnableToUpdateImpl implements UnableToUpdate {
  const _$UnableToUpdateImpl();

  @override
  String toString() {
    return 'FireStoreFailure.unableToUpdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnableToUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() notFound,
  }) {
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermission,
    TResult? Function()? unableToUpdate,
    TResult? Function()? notFound,
  }) {
    return unableToUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermission value)
        insufficientPermission,
    required TResult Function(UnableToUpdate value) unableToUpdate,
    required TResult Function(NotFound value) notFound,
  }) {
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(InsufficientPermission value)? insufficientPermission,
    TResult? Function(UnableToUpdate value)? unableToUpdate,
    TResult? Function(NotFound value)? notFound,
  }) {
    return unableToUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermission value)? insufficientPermission,
    TResult Function(UnableToUpdate value)? unableToUpdate,
    TResult Function(NotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class UnableToUpdate implements FireStoreFailure {
  const factory UnableToUpdate() = _$UnableToUpdateImpl;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$FireStoreFailureCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFoundImpl implements NotFound {
  const _$NotFoundImpl();

  @override
  String toString() {
    return 'FireStoreFailure.notFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() notFound,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermission,
    TResult? Function()? unableToUpdate,
    TResult? Function()? notFound,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermission value)
        insufficientPermission,
    required TResult Function(UnableToUpdate value) unableToUpdate,
    required TResult Function(NotFound value) notFound,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(InsufficientPermission value)? insufficientPermission,
    TResult? Function(UnableToUpdate value)? unableToUpdate,
    TResult? Function(NotFound value)? notFound,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermission value)? insufficientPermission,
    TResult Function(UnableToUpdate value)? unableToUpdate,
    TResult Function(NotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements FireStoreFailure {
  const factory NotFound() = _$NotFoundImpl;
}
