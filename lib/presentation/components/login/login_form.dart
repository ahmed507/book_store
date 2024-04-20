import 'package:book_shop/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:book_shop/generated/l10n.dart';
import 'package:book_shop/presentation/components/login/login_header.dart';
import 'package:book_shop/presentation/components/shared/custom_text_field.dart';
import 'package:book_shop/presentation/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
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
                )),
              );
            },
            (_) {
              // context.go('/test');
            },
          ),
        );
      },
      listenWhen: (previous, current) =>
          previous.authFailureOrSuccessOption !=
          current.authFailureOrSuccessOption,
      buildWhen: (previous, current) =>
          previous.showErrorMessages != current.showErrorMessages ||
          previous.showOrHidePassword != current.showOrHidePassword ||
          previous.emailAddress != current.emailAddress ||
          previous.password != current.password,
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Column(
            children: [
              const LoginHeader(),
              const SizedBox(
                height: 32,
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
                        (r) => null,
                      )
                    : null,
                hintText: S.of(context).email,
                prefixIcon: Icons.mail,
                // autofillHints: const [AutofillHints.email],
                keyboardType: TextInputType.emailAddress,
                // validator: Validators.emailValidator,
                // validator: (_) => state.emailAddress.value.fold(
                //   (f) => f.maybeMap(
                //     empty: (value) => S.of(context).required_email,
                //     invalidEmail: (value) => S.of(context).invalid_email,
                //     orElse: () => null,
                //   ),
                //   (r) => null,
                // ),
                textInputAction: TextInputAction.next,
                onChanged: (email) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(email: email)),
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
                          // shortPassword: (value) => S.of(context).password_length,
                          // weakPassword: (value) => S.of(context).weak_password,
                          orElse: () => null,
                        ),
                        (r) => null,
                      )
                    : null,
                hintText: S.of(context).password,
                prefixIcon: Icons.lock,
                suffixIcon: state.showOrHidePassword
                    ? Icons.visibility
                    : Icons.visibility_off,
                obscureText: state.showOrHidePassword,
                // validator: Validators.passwordValidatorLogin,
                // validator: (_) => state.password.value.fold(
                //   (f) => f.maybeMap(
                //     empty: (value) => S.of(context).required_password,
                //     // shortPassword: (value) => S.of(context).password_length,
                //     // weakPassword: (value) => S.of(context).weak_password,
                //     orElse: () => null,
                //   ),
                //   (r) => null,
                // ),
                onChanged: (password) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(password: password)),
                suffixIconOnPressed: () => context.read<SignInFormBloc>().add(
                      const SignInFormEvent.showOrHidePasswordPressed(),
                    ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    S.of(context).forgot_password,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // if (formKey.currentState!.validate()) {
                    // context.read<AuthProvider>().signInWithEmailAndPassword(
                    //       email: emailController.text,
                    //       password: passwordController.text,
                    //     );
                    context.read<SignInFormBloc>().add(const SignInFormEvent
                        .signInWithEmailAndPasswordPressed());
                    // }
                  },
                  child: Text(S.of(context).login),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(S.of(context).dont_have_an_account),
                  TextButton(
                    onPressed: () {
                      context.go(Routes.signup.toFullPath);
                    },
                    child: Text(S.of(context).signup),
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
