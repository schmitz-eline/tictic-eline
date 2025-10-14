import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/durations.dart';
import '../../../constants/sizes.dart';
import 'bullet.dart';

class Bullets extends StatelessWidget {
  const Bullets({
    super.key,
    required this.items,
    required this.pageController,
    required this.currentIdx,
  });

  final List<String> items;
  final PageController pageController;
  final int currentIdx;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items.map((item) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            pageController.animateToPage(
              items.indexOf(item),
              duration: kAnimationDurationShort,
              curve: Curves.easeInOut,
            );
          },
          child: Bullet(
            marginRight: items.indexOf(item) == items.length - 1
                ? 0
                : kHorizontalPaddingL,
            width:
                ((MediaQuery.of(context).size.width -
                    kHorizontalPaddingXL -
                    (items.length - 1) * kHorizontalPaddingL) /
                items.length),
            color: items.indexOf(item) == currentIdx
                ? kMainColor
                : kSecondaryColor,
          ),
        );
      }).toList(),
    );
  }
}