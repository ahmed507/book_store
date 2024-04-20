import 'package:book_shop/domain/auth/auth_failures.dart';
import 'package:book_shop/domain/auth/i_auth_facade.dart';
import 'package:book_shop/domain/auth/value_object.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade authFacade;

  SignInFormBloc({required this.authFacade})
      : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) async {
      await event.map(
        showOrHidePasswordPressed: (e) {
          emit(state.copyWith(showOrHidePassword: !state.showOrHidePassword));
        },
        emailChanged: (e) {
          emit(state.copyWith(
            emailAddress: EmailAddress(input: e.email),
            authFailureOrSuccessOption: none(),
          ));
        },
        passwordChanged: (e) {
          emit(state.copyWith(
            password: SignInPassword(input: e.password),
            authFailureOrSuccessOption: none(),
          ));
        },
        signInWithEmailAndPasswordPressed: (e) async {
          Either<AuthFailure, Unit>? authFailureOrSuccess;
          if (state.emailAddress.isValid() && state.password.isValid()) {
            emit(state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ));
            authFailureOrSuccess = await authFacade.signInWithEmailAndPassword(
                emailAddress: state.emailAddress, password: state.password);
          }
          emit(state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
          ));
        },
        signInWithGooglePressed: (e) async {
          emit(state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ));
          final Either<AuthFailure, Unit> authFailureOrSuccess =
              await authFacade.signInWithGoogle();
          emit(state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: some(authFailureOrSuccess),
          ));
        },
      );
    });
  }
}
