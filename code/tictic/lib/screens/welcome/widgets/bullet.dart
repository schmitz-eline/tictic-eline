import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class Bullet extends StatelessWidget {
  const Bullet({
    super.key,
    required this.marginRight,
    required this.width,
    required this.color,
  });

  final double marginRight;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kVerticalPaddingL,
        right: marginRight,
        bottom: kVerticalPaddingS,
      ),
      width: width,
      height: kVerticalPaddingXS,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        color: color,
        boxShadow: [kShadow],
      ),
    );
  }
}
