import 'package:book_shop/domain/auth/auth_failures.dart';
import 'package:book_shop/domain/auth/i_auth_facade.dart';
import 'package:book_shop/domain/auth/value_object.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_form_bloc.freezed.dart';
part 'register_form_event.dart';
part 'register_form_state.dart';

@injectable
class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  final IAuthFacade authFacade;

  RegisterFormBloc({required this.authFacade})
      : super(RegisterFormState.initial()) {
    on<RegisterFormEvent>((event, emit) async {
      await event.when(
        nameChanged: (name) {
          emit(state.copyWith(
            name: Name(input: name),
            authFailureOrSuccessOption: none(),
          ));
        },
        emailChanged: (email) {
          emit(state.copyWith(
            emailAddress: EmailAddress(input: email),
            authFailureOrSuccessOption: none(),
          ));
        },
        passwordChanged: (password) {
          emit(state.copyWith(
            password: RegisterPassword(input: password),
            authFailureOrSuccessOption: none(),
          ));
        },
        confirmPasswordChanged: (password) {
          emit(state.copyWith(
            confirmPassword: RegisterConfirmPassword(
                input: password, password: state.password.getOrCrash()),
            authFailureOrSuccessOption: none(),
          ));
        },
        showOrHidePasswordPressed: () {
          emit(state.copyWith(
            showOrHidePassword: !state.showOrHidePassword,
            authFailureOrSuccessOption: none(),
          ));
        },
        showOrHideConfirmPasswordPressed: () {
          emit(state.copyWith(
            showOrHideConfirmPassword: !state.showOrHideConfirmPassword,
            authFailureOrSuccessOption: none(),
          ));
        },
        checkBoxPressed: () {
          emit(state.copyWith(
            checkbox: !state.checkbox,
            authFailureOrSuccessOption: none(),
          ));
        },
        registerWithEmailAndPasswordPressed: () async {
          Either<AuthFailure, Unit>? authFailureOrSuccess;
          if (state.name.isValid() &&
              state.emailAddress.isValid() &&
              state.password.isValid() &&
              state.confirmPassword.isValid() &&
              state.checkbox) {
            // if (state.password.getOrCrash() !=
            //     state.confirmPassword.getOrCrash()) {
            //   emit(state.copyWith(
            //     isSubmitting: false,
            //     confirmPassword: state.confirmPassword.value.fold(
            //       (f) => RegisterPassword(input: ''),
            //       (r) => RegisterPassword(input: r),
            //     ),
            //     showErrorMessages: true,
            //     authFailureOrSuccessOption: none(),
            //   ));
            // } else {
            emit(state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ));

            authFailureOrSuccess =
                await authFacade.registerWithEmailAndPassword(
                    name: state.name,
                    emailAddress: state.emailAddress,
                    password: state.password);
            // }
          }
          emit(state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
          ));
        },
      );
    });
  }
}
