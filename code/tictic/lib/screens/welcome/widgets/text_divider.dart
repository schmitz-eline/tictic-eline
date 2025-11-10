import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class TextDivider extends StatelessWidget {
  const TextDivider({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Row(
        children: [
          Expanded(child: Divider(color: kMainColor, thickness: 1)),
          SizedBox(width: kHorizontalPaddingS),
          Text(text),
          SizedBox(width: kHorizontalPaddingS),
          Expanded(child: Divider(color: kMainColor, thickness: 1)),
        ],
      ),
    );
  }
}
