import 'package:book_shop/application/auth/register_form/register_form_bloc.dart';
import 'package:book_shop/generated/l10n.dart';
import 'package:book_shop/presentation/components/register/sign_up_header.dart';
import 'package:book_shop/presentation/components/shared/custom_text_field.dart';
import 'package:book_shop/presentation/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterFormBloc, RegisterFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    failure.map(
                      cancelledByUser: (_) => 'Cancelled',
                      serverError: (_) => 'Server error',
                      emailAlreadyInUse: (_) => 'Email already in use',
                      invalidEmailAndPasswordCombination: (_) =>
                          'Invalid email and password combination',
                    ),
                  ),
                ),
              );
            },
            (_) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Registration successful'),
                ),
              );
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Column(
            children: [
              const SignUpHeader(),
              CustomTextField(
                controller: nameController,
                errorText: state.showErrorMessages
                    ? state.name.value.fold(
                        (f) => f.maybeMap(
                          empty: (value) => S.of(context).name_required,
                          shortName: (value) => S.of(context).name_length,
                          orElse: () => null,
                        ),
                        (_) => null,
                      )
                    : null,
                hintText: S.of(context).full_name,
                prefixIcon: Icons.person,
                onChanged: (value) {
                  context.read<RegisterFormBloc>().add(
                        RegisterFormEvent.nameChanged(name: value),
                      );
                },
                // autofillHints: const [AutofillHints.email],
                keyboardType: TextInputType.name,
                // validator: Validators.nameValidator,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                controller: emailController,
                errorText: state.showErrorMessages
                    ? state.emailAddress.value.fold(
                        (f) => f.maybeMap(
                          empty: (value) => S.of(context).required_email,
                          invalidEmail: (value) => S.of(context).invalid_email,
                          orElse: () => null,
                        ),
                        (_) => null,
                      )
                    : null,
                hintText: S.of(context).email,
                prefixIcon: Icons.mail,
                onChanged: (value) {
                  context.read<RegisterFormBloc>().add(
                        RegisterFormEvent.emailChanged(email: value),
                      );
                },
                // autofillHints: const [AutofillHints.email],
                keyboardType: TextInputType.emailAddress,
                // validator: Validators.emailValidator,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                controller: passwordController,
                errorText: state.showErrorMessages
                    ? state.password.value.fold(
                        (f) => f.maybeMap(
                          empty: (value) => S.of(context).required_password,
                          shortPassword: (value) =>
                              S.of(context).password_length,
                          weakPassword: (value) => S.of(context).weak_password,
                          orElse: () => null,
                        ),
                        (_) => null,
                      )
                    : null,
                hintText: S.of(context).password,
                prefixIcon: Icons.lock,
                suffixIcon: state.showOrHidePassword
                    ? Icons.visibility
                    : Icons.visibility_off,
                obscureText: state.showOrHidePassword,
                textInputAction: TextInputAction.next,
                onChanged: (value) {
                  context.read<RegisterFormBloc>().add(
                        RegisterFormEvent.passwordChanged(password: value),
                      );
                },
                suffixIconOnPressed: () {
                  context
                      .read<RegisterFormBloc>()
                      .add(const RegisterFormEvent.showOrHidePasswordPressed());
                },
                // validator: (String? value) =>
                //     Validators.passwordValidatorSignUp(
                //         value: value,
                //         confirmPassword: confirmPasswordController.text),
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                controller: confirmPasswordController,
                errorText: state.showErrorMessages
                    ? state.confirmPassword.value.fold(
                        (f) => f.maybeMap(
                          empty: (value) => S.of(context).required_password,
                          shortPassword: (value) =>
                              S.of(context).password_length,
                          passwordsDoNotMatch: (value) =>
                              S.of(context).password_does_not_match,
                          weakPassword: (value) => S.of(context).weak_password,
                          orElse: () => null,
                        ),
                        (_) => null,
                      )
                    : null,
                onChanged: (value) {
                  context.read<RegisterFormBloc>().add(
                        RegisterFormEvent.confirmPasswordChanged(
                            password: value),
                      );
                },
                hintText: S.of(context).confirm_password,
                prefixIcon: Icons.lock,
                suffixIcon: state.showOrHideConfirmPassword
                    ? Icons.visibility
                    : Icons.visibility_off,
                obscureText: state.showOrHideConfirmPassword,
                textInputAction: TextInputAction.done,
                suffixIconOnPressed: () {
                  context.read<RegisterFormBloc>().add(const RegisterFormEvent
                      .showOrHideConfirmPasswordPressed());
                },
                // validator: (String? value) =>
                //     Validators.passwordValidatorSignUp(
                //         value: value, confirmPassword: passwordController.text),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: ScaleTransition(
                      scale: const AlwaysStoppedAnimation(0.8),
                      child: Checkbox(
                        value: state.checkbox,
                        onChanged: (value) {
                          context
                              .read<RegisterFormBloc>()
                              .add(const RegisterFormEvent.checkBoxPressed());
                        },
                      ),
                    ),
                  ),
                  Text(S.of(context).by_checking_this_box,
                      style: Theme.of(context).textTheme.labelSmall),
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(left: 4),
                        minimumSize: const Size(50, 30),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft),
                    onPressed: () {},
                    child: Text(S.of(context).terms,
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w500,
                            )),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: !state.checkbox
                      ? null
                      : () {
                          // if (formKey.currentState!.validate()) {
                          // context
                          //     .read<AuthProvider>()
                          //     .registerWithEmailAndPassword(
                          //       name: nameController.text,
                          //       email: emailController.text,
                          //       password: passwordController.text,
                          //     );
                          context.read<RegisterFormBloc>().add(
                                const RegisterFormEvent
                                    .registerWithEmailAndPasswordPressed(),
                              );
                          // }
                        },
                  child: Text(S.of(context).signup),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(S.of(context).already_have_an_account),
                  TextButton(
                    onPressed: () {
                      context.go(Routes.login.toFullPath);
                    },
                    child: Text(S.of(context).login),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
