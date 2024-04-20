// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) confirmPasswordChanged,
    required TResult Function() showOrHidePasswordPressed,
    required TResult Function() showOrHideConfirmPasswordPressed,
    required TResult Function() checkBoxPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? confirmPasswordChanged,
    TResult? Function()? showOrHidePasswordPressed,
    TResult? Function()? showOrHideConfirmPasswordPressed,
    TResult? Function()? checkBoxPressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? confirmPasswordChanged,
    TResult Function()? showOrHidePasswordPressed,
    TResult Function()? showOrHideConfirmPasswordPressed,
    TResult Function()? checkBoxPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ShowOrHidePasswordPressed value)
        showOrHidePasswordPressed,
    required TResult Function(_ShowOrHideConfirmPasswordPressed value)
        showOrHideConfirmPasswordPressed,
    required TResult Function(_CheckBoxPressed value) checkBoxPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult? Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult? Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult? Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormEventCopyWith<$Res> {
  factory $RegisterFormEventCopyWith(
          RegisterFormEvent value, $Res Function(RegisterFormEvent) then) =
      _$RegisterFormEventCopyWithImpl<$Res, RegisterFormEvent>;
}

/// @nodoc
class _$RegisterFormEventCopyWithImpl<$Res, $Val extends RegisterFormEvent>
    implements $RegisterFormEventCopyWith<$Res> {
  _$RegisterFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChangedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'RegisterFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) confirmPasswordChanged,
    required TResult Function() showOrHidePasswordPressed,
    required TResult Function() showOrHideConfirmPasswordPressed,
    required TResult Function() checkBoxPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? confirmPasswordChanged,
    TResult? Function()? showOrHidePasswordPressed,
    TResult? Function()? showOrHideConfirmPasswordPressed,
    TResult? Function()? checkBoxPressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? confirmPasswordChanged,
    TResult Function()? showOrHidePasswordPressed,
    TResult Function()? showOrHideConfirmPasswordPressed,
    TResult Function()? checkBoxPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ShowOrHidePasswordPressed value)
        showOrHidePasswordPressed,
    required TResult Function(_ShowOrHideConfirmPasswordPressed value)
        showOrHideConfirmPasswordPressed,
    required TResult Function(_CheckBoxPressed value) checkBoxPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult? Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult? Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult? Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements RegisterFormEvent {
  const factory _NameChanged({required final String name}) = _$NameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  const _$EmailChangedImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) confirmPasswordChanged,
    required TResult Function() showOrHidePasswordPressed,
    required TResult Function() showOrHideConfirmPasswordPressed,
    required TResult Function() checkBoxPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? confirmPasswordChanged,
    TResult? Function()? showOrHidePasswordPressed,
    TResult? Function()? showOrHideConfirmPasswordPressed,
    TResult? Function()? checkBoxPressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? confirmPasswordChanged,
    TResult Function()? showOrHidePasswordPressed,
    TResult Function()? showOrHideConfirmPasswordPressed,
    TResult Function()? checkBoxPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ShowOrHidePasswordPressed value)
        showOrHidePasswordPressed,
    required TResult Function(_ShowOrHideConfirmPasswordPressed value)
        showOrHideConfirmPasswordPressed,
    required TResult Function(_CheckBoxPressed value) checkBoxPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult? Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult? Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult? Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements RegisterFormEvent {
  const factory _EmailChanged({required final String email}) =
      _$EmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements _PasswordChanged {
  const _$PasswordChangedImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) confirmPasswordChanged,
    required TResult Function() showOrHidePasswordPressed,
    required TResult Function() showOrHideConfirmPasswordPressed,
    required TResult Function() checkBoxPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? confirmPasswordChanged,
    TResult? Function()? showOrHidePasswordPressed,
    TResult? Function()? showOrHideConfirmPasswordPressed,
    TResult? Function()? checkBoxPressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? confirmPasswordChanged,
    TResult Function()? showOrHidePasswordPressed,
    TResult Function()? showOrHideConfirmPasswordPressed,
    TResult Function()? checkBoxPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ShowOrHidePasswordPressed value)
        showOrHidePasswordPressed,
    required TResult Function(_ShowOrHideConfirmPasswordPressed value)
        showOrHideConfirmPasswordPressed,
    required TResult Function(_CheckBoxPressed value) checkBoxPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult? Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult? Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult? Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements RegisterFormEvent {
  const factory _PasswordChanged({required final String password}) =
      _$PasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  factory _$$ConfirmPasswordChangedImplCopyWith(
          _$ConfirmPasswordChangedImpl value,
          $Res Function(_$ConfirmPasswordChangedImpl) then) =
      __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$ConfirmPasswordChangedImpl>
    implements _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  __$$ConfirmPasswordChangedImplCopyWithImpl(
      _$ConfirmPasswordChangedImpl _value,
      $Res Function(_$ConfirmPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$ConfirmPasswordChangedImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChangedImpl implements _ConfirmPasswordChanged {
  const _$ConfirmPasswordChangedImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterFormEvent.confirmPasswordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => __$$ConfirmPasswordChangedImplCopyWithImpl<
          _$ConfirmPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) confirmPasswordChanged,
    required TResult Function() showOrHidePasswordPressed,
    required TResult Function() showOrHideConfirmPasswordPressed,
    required TResult Function() checkBoxPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return confirmPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? confirmPasswordChanged,
    TResult? Function()? showOrHidePasswordPressed,
    TResult? Function()? showOrHideConfirmPasswordPressed,
    TResult? Function()? checkBoxPressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return confirmPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? confirmPasswordChanged,
    TResult Function()? showOrHidePasswordPressed,
    TResult Function()? showOrHideConfirmPasswordPressed,
    TResult Function()? checkBoxPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ShowOrHidePasswordPressed value)
        showOrHidePasswordPressed,
    required TResult Function(_ShowOrHideConfirmPasswordPressed value)
        showOrHideConfirmPasswordPressed,
    required TResult Function(_CheckBoxPressed value) checkBoxPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult? Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult? Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult? Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordChanged implements RegisterFormEvent {
  const factory _ConfirmPasswordChanged({required final String password}) =
      _$ConfirmPasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowOrHidePasswordPressedImplCopyWith<$Res> {
  factory _$$ShowOrHidePasswordPressedImplCopyWith(
          _$ShowOrHidePasswordPressedImpl value,
          $Res Function(_$ShowOrHidePasswordPressedImpl) then) =
      __$$ShowOrHidePasswordPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowOrHidePasswordPressedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res,
        _$ShowOrHidePasswordPressedImpl>
    implements _$$ShowOrHidePasswordPressedImplCopyWith<$Res> {
  __$$ShowOrHidePasswordPressedImplCopyWithImpl(
      _$ShowOrHidePasswordPressedImpl _value,
      $Res Function(_$ShowOrHidePasswordPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowOrHidePasswordPressedImpl implements _ShowOrHidePasswordPressed {
  const _$ShowOrHidePasswordPressedImpl();

  @override
  String toString() {
    return 'RegisterFormEvent.showOrHidePasswordPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowOrHidePasswordPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) confirmPasswordChanged,
    required TResult Function() showOrHidePasswordPressed,
    required TResult Function() showOrHideConfirmPasswordPressed,
    required TResult Function() checkBoxPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return showOrHidePasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? confirmPasswordChanged,
    TResult? Function()? showOrHidePasswordPressed,
    TResult? Function()? showOrHideConfirmPasswordPressed,
    TResult? Function()? checkBoxPressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return showOrHidePasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? confirmPasswordChanged,
    TResult Function()? showOrHidePasswordPressed,
    TResult Function()? showOrHideConfirmPasswordPressed,
    TResult Function()? checkBoxPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (showOrHidePasswordPressed != null) {
      return showOrHidePasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ShowOrHidePasswordPressed value)
        showOrHidePasswordPressed,
    required TResult Function(_ShowOrHideConfirmPasswordPressed value)
        showOrHideConfirmPasswordPressed,
    required TResult Function(_CheckBoxPressed value) checkBoxPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return showOrHidePasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult? Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult? Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult? Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return showOrHidePasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (showOrHidePasswordPressed != null) {
      return showOrHidePasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _ShowOrHidePasswordPressed implements RegisterFormEvent {
  const factory _ShowOrHidePasswordPressed() = _$ShowOrHidePasswordPressedImpl;
}

/// @nodoc
abstract class _$$ShowOrHideConfirmPasswordPressedImplCopyWith<$Res> {
  factory _$$ShowOrHideConfirmPasswordPressedImplCopyWith(
          _$ShowOrHideConfirmPasswordPressedImpl value,
          $Res Function(_$ShowOrHideConfirmPasswordPressedImpl) then) =
      __$$ShowOrHideConfirmPasswordPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowOrHideConfirmPasswordPressedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res,
        _$ShowOrHideConfirmPasswordPressedImpl>
    implements _$$ShowOrHideConfirmPasswordPressedImplCopyWith<$Res> {
  __$$ShowOrHideConfirmPasswordPressedImplCopyWithImpl(
      _$ShowOrHideConfirmPasswordPressedImpl _value,
      $Res Function(_$ShowOrHideConfirmPasswordPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowOrHideConfirmPasswordPressedImpl
    implements _ShowOrHideConfirmPasswordPressed {
  const _$ShowOrHideConfirmPasswordPressedImpl();

  @override
  String toString() {
    return 'RegisterFormEvent.showOrHideConfirmPasswordPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowOrHideConfirmPasswordPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) confirmPasswordChanged,
    required TResult Function() showOrHidePasswordPressed,
    required TResult Function() showOrHideConfirmPasswordPressed,
    required TResult Function() checkBoxPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return showOrHideConfirmPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? confirmPasswordChanged,
    TResult? Function()? showOrHidePasswordPressed,
    TResult? Function()? showOrHideConfirmPasswordPressed,
    TResult? Function()? checkBoxPressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return showOrHideConfirmPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? confirmPasswordChanged,
    TResult Function()? showOrHidePasswordPressed,
    TResult Function()? showOrHideConfirmPasswordPressed,
    TResult Function()? checkBoxPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (showOrHideConfirmPasswordPressed != null) {
      return showOrHideConfirmPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ShowOrHidePasswordPressed value)
        showOrHidePasswordPressed,
    required TResult Function(_ShowOrHideConfirmPasswordPressed value)
        showOrHideConfirmPasswordPressed,
    required TResult Function(_CheckBoxPressed value) checkBoxPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return showOrHideConfirmPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult? Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult? Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult? Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return showOrHideConfirmPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (showOrHideConfirmPasswordPressed != null) {
      return showOrHideConfirmPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _ShowOrHideConfirmPasswordPressed implements RegisterFormEvent {
  const factory _ShowOrHideConfirmPasswordPressed() =
      _$ShowOrHideConfirmPasswordPressedImpl;
}

/// @nodoc
abstract class _$$CheckBoxPressedImplCopyWith<$Res> {
  factory _$$CheckBoxPressedImplCopyWith(_$CheckBoxPressedImpl value,
          $Res Function(_$CheckBoxPressedImpl) then) =
      __$$CheckBoxPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckBoxPressedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$CheckBoxPressedImpl>
    implements _$$CheckBoxPressedImplCopyWith<$Res> {
  __$$CheckBoxPressedImplCopyWithImpl(
      _$CheckBoxPressedImpl _value, $Res Function(_$CheckBoxPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckBoxPressedImpl implements _CheckBoxPressed {
  const _$CheckBoxPressedImpl();

  @override
  String toString() {
    return 'RegisterFormEvent.checkBoxPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckBoxPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) confirmPasswordChanged,
    required TResult Function() showOrHidePasswordPressed,
    required TResult Function() showOrHideConfirmPasswordPressed,
    required TResult Function() checkBoxPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return checkBoxPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? confirmPasswordChanged,
    TResult? Function()? showOrHidePasswordPressed,
    TResult? Function()? showOrHideConfirmPasswordPressed,
    TResult? Function()? checkBoxPressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return checkBoxPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? confirmPasswordChanged,
    TResult Function()? showOrHidePasswordPressed,
    TResult Function()? showOrHideConfirmPasswordPressed,
    TResult Function()? checkBoxPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (checkBoxPressed != null) {
      return checkBoxPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ShowOrHidePasswordPressed value)
        showOrHidePasswordPressed,
    required TResult Function(_ShowOrHideConfirmPasswordPressed value)
        showOrHideConfirmPasswordPressed,
    required TResult Function(_CheckBoxPressed value) checkBoxPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return checkBoxPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult? Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult? Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult? Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return checkBoxPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (checkBoxPressed != null) {
      return checkBoxPressed(this);
    }
    return orElse();
  }
}

abstract class _CheckBoxPressed implements RegisterFormEvent {
  const factory _CheckBoxPressed() = _$CheckBoxPressedImpl;
}

/// @nodoc
abstract class _$$RegisterWithEmailAndPasswordPressedImplCopyWith<$Res> {
  factory _$$RegisterWithEmailAndPasswordPressedImplCopyWith(
          _$RegisterWithEmailAndPasswordPressedImpl value,
          $Res Function(_$RegisterWithEmailAndPasswordPressedImpl) then) =
      __$$RegisterWithEmailAndPasswordPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterWithEmailAndPasswordPressedImplCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res,
        _$RegisterWithEmailAndPasswordPressedImpl>
    implements _$$RegisterWithEmailAndPasswordPressedImplCopyWith<$Res> {
  __$$RegisterWithEmailAndPasswordPressedImplCopyWithImpl(
      _$RegisterWithEmailAndPasswordPressedImpl _value,
      $Res Function(_$RegisterWithEmailAndPasswordPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterWithEmailAndPasswordPressedImpl
    implements _RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressedImpl();

  @override
  String toString() {
    return 'RegisterFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWithEmailAndPasswordPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) confirmPasswordChanged,
    required TResult Function() showOrHidePasswordPressed,
    required TResult Function() showOrHideConfirmPasswordPressed,
    required TResult Function() checkBoxPressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? confirmPasswordChanged,
    TResult? Function()? showOrHidePasswordPressed,
    TResult? Function()? showOrHideConfirmPasswordPressed,
    TResult? Function()? checkBoxPressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? confirmPasswordChanged,
    TResult Function()? showOrHidePasswordPressed,
    TResult Function()? showOrHideConfirmPasswordPressed,
    TResult Function()? checkBoxPressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ShowOrHidePasswordPressed value)
        showOrHidePasswordPressed,
    required TResult Function(_ShowOrHideConfirmPasswordPressed value)
        showOrHideConfirmPasswordPressed,
    required TResult Function(_CheckBoxPressed value) checkBoxPressed,
    required TResult Function(_RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult? Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult? Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult? Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ShowOrHidePasswordPressed value)?
        showOrHidePasswordPressed,
    TResult Function(_ShowOrHideConfirmPasswordPressed value)?
        showOrHideConfirmPasswordPressed,
    TResult Function(_CheckBoxPressed value)? checkBoxPressed,
    TResult Function(_RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmailAndPasswordPressed
    implements RegisterFormEvent {
  const factory _RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressedImpl;
}

/// @nodoc
mixin _$RegisterFormState {
  Name get name => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  RegisterPassword get password => throw _privateConstructorUsedError;
  RegisterConfirmPassword get confirmPassword =>
      throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get showOrHidePassword => throw _privateConstructorUsedError;
  bool get showOrHideConfirmPassword => throw _privateConstructorUsedError;
  bool get checkbox => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterFormStateCopyWith<RegisterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormStateCopyWith<$Res> {
  factory $RegisterFormStateCopyWith(
          RegisterFormState value, $Res Function(RegisterFormState) then) =
      _$RegisterFormStateCopyWithImpl<$Res, RegisterFormState>;
  @useResult
  $Res call(
      {Name name,
      EmailAddress emailAddress,
      RegisterPassword password,
      RegisterConfirmPassword confirmPassword,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      bool showOrHidePassword,
      bool showOrHideConfirmPassword,
      bool checkbox});
}

/// @nodoc
class _$RegisterFormStateCopyWithImpl<$Res, $Val extends RegisterFormState>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? emailAddress = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
    Object? showOrHidePassword = null,
    Object? showOrHideConfirmPassword = null,
    Object? checkbox = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as RegisterPassword,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as RegisterConfirmPassword,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      showOrHidePassword: null == showOrHidePassword
          ? _value.showOrHidePassword
          : showOrHidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showOrHideConfirmPassword: null == showOrHideConfirmPassword
          ? _value.showOrHideConfirmPassword
          : showOrHideConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      checkbox: null == checkbox
          ? _value.checkbox
          : checkbox // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterFormStateImplCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$$RegisterFormStateImplCopyWith(_$RegisterFormStateImpl value,
          $Res Function(_$RegisterFormStateImpl) then) =
      __$$RegisterFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Name name,
      EmailAddress emailAddress,
      RegisterPassword password,
      RegisterConfirmPassword confirmPassword,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      bool showOrHidePassword,
      bool showOrHideConfirmPassword,
      bool checkbox});
}

/// @nodoc
class __$$RegisterFormStateImplCopyWithImpl<$Res>
    extends _$RegisterFormStateCopyWithImpl<$Res, _$RegisterFormStateImpl>
    implements _$$RegisterFormStateImplCopyWith<$Res> {
  __$$RegisterFormStateImplCopyWithImpl(_$RegisterFormStateImpl _value,
      $Res Function(_$RegisterFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? emailAddress = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
    Object? showOrHidePassword = null,
    Object? showOrHideConfirmPassword = null,
    Object? checkbox = null,
  }) {
    return _then(_$RegisterFormStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as RegisterPassword,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as RegisterConfirmPassword,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      showOrHidePassword: null == showOrHidePassword
          ? _value.showOrHidePassword
          : showOrHidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showOrHideConfirmPassword: null == showOrHideConfirmPassword
          ? _value.showOrHideConfirmPassword
          : showOrHideConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      checkbox: null == checkbox
          ? _value.checkbox
          : checkbox // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RegisterFormStateImpl implements _RegisterFormState {
  const _$RegisterFormStateImpl(
      {required this.name,
      required this.emailAddress,
      required this.password,
      required this.confirmPassword,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption,
      required this.showOrHidePassword,
      required this.showOrHideConfirmPassword,
      required this.checkbox});

  @override
  final Name name;
  @override
  final EmailAddress emailAddress;
  @override
  final RegisterPassword password;
  @override
  final RegisterConfirmPassword confirmPassword;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;
  @override
  final bool showOrHidePassword;
  @override
  final bool showOrHideConfirmPassword;
  @override
  final bool checkbox;

  @override
  String toString() {
    return 'RegisterFormState(name: $name, emailAddress: $emailAddress, password: $password, confirmPassword: $confirmPassword, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption, showOrHidePassword: $showOrHidePassword, showOrHideConfirmPassword: $showOrHideConfirmPassword, checkbox: $checkbox)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFormStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption) &&
            (identical(other.showOrHidePassword, showOrHidePassword) ||
                other.showOrHidePassword == showOrHidePassword) &&
            (identical(other.showOrHideConfirmPassword,
                    showOrHideConfirmPassword) ||
                other.showOrHideConfirmPassword == showOrHideConfirmPassword) &&
            (identical(other.checkbox, checkbox) ||
                other.checkbox == checkbox));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      emailAddress,
      password,
      confirmPassword,
      showErrorMessages,
      isSubmitting,
      authFailureOrSuccessOption,
      showOrHidePassword,
      showOrHideConfirmPassword,
      checkbox);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterFormStateImplCopyWith<_$RegisterFormStateImpl> get copyWith =>
      __$$RegisterFormStateImplCopyWithImpl<_$RegisterFormStateImpl>(
          this, _$identity);
}

abstract class _RegisterFormState implements RegisterFormState {
  const factory _RegisterFormState(
      {required final Name name,
      required final EmailAddress emailAddress,
      required final RegisterPassword password,
      required final RegisterConfirmPassword confirmPassword,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption,
      required final bool showOrHidePassword,
      required final bool showOrHideConfirmPassword,
      required final bool checkbox}) = _$RegisterFormStateImpl;

  @override
  Name get name;
  @override
  EmailAddress get emailAddress;
  @override
  RegisterPassword get password;
  @override
  RegisterConfirmPassword get confirmPassword;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  bool get showOrHidePassword;
  @override
  bool get showOrHideConfirmPassword;
  @override
  bool get checkbox;
  @override
  @JsonKey(ignore: true)
  _$$RegisterFormStateImplCopyWith<_$RegisterFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
