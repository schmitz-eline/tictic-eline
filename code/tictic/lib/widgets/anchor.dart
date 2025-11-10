import 'package:flutter/material.dart';

import '../constants/fonts.dart' show kItalicText;

class Anchor extends StatelessWidget {
  const Anchor({super.key, required this.text, required this.onTap});

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: kItalicText.copyWith(decoration: TextDecoration.underline),
      ),
    );
  }
}
