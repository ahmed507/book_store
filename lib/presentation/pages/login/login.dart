import 'package:book_shop/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:book_shop/injection.dart';
import 'package:book_shop/presentation/components/login/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: Scaffold(
        appBar: AppBar(),
        body:
            // Selector<AuthProvider, AuthState>(
            //   selector: (context, value) => value.state,
            //   builder: (context, state, child) {
            //     return
            SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: LoginForm(),
          ),
          // );
          // },
        ),
      ),
    );
  }
}
