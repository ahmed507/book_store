import 'package:book_shop/generated/assets.dart';
import 'package:book_shop/generated/l10n.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.imagesLogin,
          height: 220,
        ),
        Positioned(
          bottom: 0,
          left: 35,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                S.of(context).login_title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                S.of(context).login_subtitle,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
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
