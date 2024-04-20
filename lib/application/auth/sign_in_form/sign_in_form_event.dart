part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  // const factory SignInFormEvent.started() = _Started;

  const factory SignInFormEvent.emailChanged({required String email}) =
      _EmailChanged;

  const factory SignInFormEvent.passwordChanged({required String password}) =
      _PasswordChanged;

  const factory SignInFormEvent.showOrHidePasswordPressed() =
      _ShowOrHidePassword;

  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      _SignInWithEmailAndPasswordPressed;

  const factory SignInFormEvent.signInWithGooglePressed() =
      _SignInWithGooglePressed;
}
