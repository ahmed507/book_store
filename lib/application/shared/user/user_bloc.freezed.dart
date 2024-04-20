// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(UserModel user) updateCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(UserModel user)? updateCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserModel user)? updateCurrentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_UpdateCurrentUser value) updateCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_UpdateCurrentUser value)? updateCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_UpdateCurrentUser value)? updateCurrentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCurrentUserImplCopyWith<$Res> {
  factory _$$GetCurrentUserImplCopyWith(_$GetCurrentUserImpl value,
          $Res Function(_$GetCurrentUserImpl) then) =
      __$$GetCurrentUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetCurrentUserImpl>
    implements _$$GetCurrentUserImplCopyWith<$Res> {
  __$$GetCurrentUserImplCopyWithImpl(
      _$GetCurrentUserImpl _value, $Res Function(_$GetCurrentUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCurrentUserImpl implements _GetCurrentUser {
  const _$GetCurrentUserImpl();

  @override
  String toString() {
    return 'UserEvent.getCurrentUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCurrentUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(UserModel user) updateCurrentUser,
  }) {
    return getCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(UserModel user)? updateCurrentUser,
  }) {
    return getCurrentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserModel user)? updateCurrentUser,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_UpdateCurrentUser value) updateCurrentUser,
  }) {
    return getCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_UpdateCurrentUser value)? updateCurrentUser,
  }) {
    return getCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_UpdateCurrentUser value)? updateCurrentUser,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentUser implements UserEvent {
  const factory _GetCurrentUser() = _$GetCurrentUserImpl;
}

/// @nodoc
abstract class _$$UpdateCurrentUserImplCopyWith<$Res> {
  factory _$$UpdateCurrentUserImplCopyWith(_$UpdateCurrentUserImpl value,
          $Res Function(_$UpdateCurrentUserImpl) then) =
      __$$UpdateCurrentUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$UpdateCurrentUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UpdateCurrentUserImpl>
    implements _$$UpdateCurrentUserImplCopyWith<$Res> {
  __$$UpdateCurrentUserImplCopyWithImpl(_$UpdateCurrentUserImpl _value,
      $Res Function(_$UpdateCurrentUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UpdateCurrentUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$UpdateCurrentUserImpl implements _UpdateCurrentUser {
  const _$UpdateCurrentUserImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'UserEvent.updateCurrentUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCurrentUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCurrentUserImplCopyWith<_$UpdateCurrentUserImpl> get copyWith =>
      __$$UpdateCurrentUserImplCopyWithImpl<_$UpdateCurrentUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(UserModel user) updateCurrentUser,
  }) {
    return updateCurrentUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(UserModel user)? updateCurrentUser,
  }) {
    return updateCurrentUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(UserModel user)? updateCurrentUser,
    required TResult orElse(),
  }) {
    if (updateCurrentUser != null) {
      return updateCurrentUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_UpdateCurrentUser value) updateCurrentUser,
  }) {
    return updateCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_UpdateCurrentUser value)? updateCurrentUser,
  }) {
    return updateCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_UpdateCurrentUser value)? updateCurrentUser,
    required TResult orElse(),
  }) {
    if (updateCurrentUser != null) {
      return updateCurrentUser(this);
    }
    return orElse();
  }
}

abstract class _UpdateCurrentUser implements UserEvent {
  const factory _UpdateCurrentUser(final UserModel user) =
      _$UpdateCurrentUserImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$UpdateCurrentUserImplCopyWith<_$UpdateCurrentUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  UserModel? get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<FireStoreFailure> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {UserModel? user, bool isLoading, Option<FireStoreFailure> failure});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<FireStoreFailure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserModel? user, bool isLoading, Option<FireStoreFailure> failure});
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? failure = null,
  }) {
    return _then(_$UserStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<FireStoreFailure>,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {required this.user, required this.isLoading, required this.failure});

  @override
  final UserModel? user;
  @override
  final bool isLoading;
  @override
  final Option<FireStoreFailure> failure;

  @override
  String toString() {
    return 'UserState(user: $user, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {required final UserModel? user,
      required final bool isLoading,
      required final Option<FireStoreFailure> failure}) = _$UserStateImpl;

  @override
  UserModel? get user;
  @override
  bool get isLoading;
  @override
  Option<FireStoreFailure> get failure;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
