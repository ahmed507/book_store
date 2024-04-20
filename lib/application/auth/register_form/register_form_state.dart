part of 'register_form_bloc.dart';

@freezed
class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState(
      {required Name name,
      required EmailAddress emailAddress,
      required RegisterPassword password,
      required RegisterConfirmPassword confirmPassword,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      required bool showOrHidePassword,
      required bool showOrHideConfirmPassword,
      required bool checkbox}) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
        name: Name(input: ''),
        emailAddress: EmailAddress(input: ''),
        password: RegisterPassword(input: ''),
        confirmPassword: RegisterConfirmPassword(input: '', password: ''),
        showErrorMessages: false,
        isSubmitting: false,
        showOrHidePassword: true,
        showOrHideConfirmPassword: true,
        authFailureOrSuccessOption: none(),
        checkbox: false,
      );
}
