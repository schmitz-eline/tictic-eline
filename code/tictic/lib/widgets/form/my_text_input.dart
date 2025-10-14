import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput({
    super.key,
    this.prefixIcon,
    required this.labelText,
    this.validator,
    this.hintText,
    this.keyboardType,
    this.obscureText = false,
  });

  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final String labelText;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        label: Container(
          padding: EdgeInsets.symmetric(
            horizontal: kHorizontalPaddingS,
            vertical: kVerticalPaddingXS,
          ),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
          ),
          child: Text(labelText, style: kLabelStyle),
        ),
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        fillColor: kBackgroundColor,
      ),
    );
  }
}