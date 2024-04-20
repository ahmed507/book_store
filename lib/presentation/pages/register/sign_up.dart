import 'package:book_shop/application/auth/register_form/register_form_bloc.dart';
import 'package:book_shop/injection.dart';
import 'package:book_shop/presentation/components/register/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterFormBloc>(),
      child:
          // Consumer<AuthProvider>(
          //   // shouldRebuild: (before, after) {
          //   //   return before != after;
          //   // },
          //   builder: (context, provider, child) {
          // if (provider.state.isLoading) {
          //   context.read<AuthProvider>().addListener(() {
          //     showDialog(
          //       context: context,
          //       builder: (context) {
          //         return const Center(
          //           child: CircularProgressIndicator(),
          //         );
          //       },
          //     );
          //   });
          // }
          // if (state.item1) {
          //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          //     showDialog(
          //       context: context,
          //       builder: (context) {
          //         return const Center(
          //           child: CircularProgressIndicator(),
          //         );
          //       },
          //     );
          //   });
          // }
          // if (!state.item1 && Navigator.canPop(context)) {
          //   Navigator.of(context).pop();
          // }
          // if (provider.state.errorMessage != null) {
          //   // [listener] will be called after the build method is called
          //   WidgetsBinding.instance.addPostFrameCallback((_) {
          //     // Show error message using snackbars
          //     String errorMessage = provider.state.errorMessage!;
          //     if (errorMessage.contains('email-already-in-use')) {
          //       errorMessage =
          //           'The email address is already in use by another account.';
          //     }
          //
          //     SnackBar snackBar = SnackBar(
          //       content: Text(errorMessage),
          //     );
          //     ScaffoldMessenger.of(context).hideCurrentSnackBar();
          //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
          //   });
          // }

          // return
          Scaffold(
        appBar: AppBar(),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SignUpForm(),
          ),
        ),
        // );
        // },
      ),
    );
  }
}
