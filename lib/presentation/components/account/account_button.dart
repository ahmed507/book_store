import 'package:flutter/material.dart';

class AccountButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onTap;
  final Color? textColor;
  final Color? iconColor;

  final bool isLogout;

  const AccountButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.textColor,
    this.iconColor,
    this.isLogout = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      splashColor: Theme.of(context).primaryColor.withOpacity(0.25),
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 30,
              color: iconColor ?? Theme.of(context).primaryColor,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: textColor,
                  ),
            ),
            const Spacer(),
            Visibility(
              visible: !isLogout,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 25,
                color: iconColor ?? Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
