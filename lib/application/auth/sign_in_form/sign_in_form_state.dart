part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress emailAddress,
    required SignInPassword password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    required bool showOrHidePassword,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: EmailAddress(input: ''),
        password: SignInPassword(input: ''),
        showErrorMessages: false,
        isSubmitting: false,
        showOrHidePassword: true,
        authFailureOrSuccessOption: none(),
      );
}
