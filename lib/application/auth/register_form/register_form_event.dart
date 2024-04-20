part of 'register_form_bloc.dart';

@freezed
class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.nameChanged({required String name}) =
      _NameChanged;

  const factory RegisterFormEvent.emailChanged({required String email}) =
      _EmailChanged;

  const factory RegisterFormEvent.passwordChanged({required String password}) =
      _PasswordChanged;

  const factory RegisterFormEvent.confirmPasswordChanged(
      {required String password}) = _ConfirmPasswordChanged;

  const factory RegisterFormEvent.showOrHidePasswordPressed() =
      _ShowOrHidePasswordPressed;

  const factory RegisterFormEvent.showOrHideConfirmPasswordPressed() =
      _ShowOrHideConfirmPasswordPressed;

  const factory RegisterFormEvent.checkBoxPressed() = _CheckBoxPressed;

  const factory RegisterFormEvent.registerWithEmailAndPasswordPressed() =
      _RegisterWithEmailAndPasswordPressed;
}
