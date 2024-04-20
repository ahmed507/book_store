import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final IconData prefixIcon;
  final String hintText;
  final bool? obscureText;
  final IconData? suffixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final List<String>? autofillHints;
  final void Function()? suffixIconOnPressed;
  final TextInputAction? textInputAction;
  final void Function(String)? onChanged;

  final String? errorText;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    this.obscureText,
    this.suffixIcon,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.autofillHints,
    this.suffixIconOnPressed,
    this.textInputAction,
    this.onChanged,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      autofillHints: autofillHints,
      textInputAction: textInputAction,
      onChanged: onChanged,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        errorText: errorText,
        contentPadding: EdgeInsets.zero,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon != null
            ? Focus(
                canRequestFocus: false,
                descendantsAreFocusable: false,
                child: IconButton(
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onPressed: suffixIconOnPressed,
                  icon: Icon(suffixIcon),
                ),
              )
            : null,
      ),
    );
  }
}
