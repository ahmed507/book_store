import 'package:book_shop/generated/assets.dart';
import 'package:flutter/material.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.imagesSignup,
          height: 200,
        ),
        Positioned(
          bottom: 30,
          right: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Get Started',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                'by creating an account',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
