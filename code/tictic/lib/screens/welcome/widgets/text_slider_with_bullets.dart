import 'package:flutter/material.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/welcome/widgets/text_slider.dart';

import '../../../constants/sizes.dart';
import 'bullets.dart';

class TextSliderWithBullets extends StatefulWidget {
  const TextSliderWithBullets({super.key});

  @override
  State<TextSliderWithBullets> createState() => _TextSliderWithBulletsState();
}

class _TextSliderWithBulletsState extends State<TextSliderWithBullets> {
  final PageController _pageController = PageController(viewportFraction: 1);

  int _currentIdx = 0;

  late final _items = [
    AppLocalizations.of(context)!.text_slide_1,
    AppLocalizations.of(context)!.text_slide_2,
    AppLocalizations.of(context)!.text_slide_3,
    AppLocalizations.of(context)!.text_slide_4,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextSlider(
          pageController: _pageController,
          currentIdx: _currentIdx,
          items: _items,
          onPageChanged: (int idx) {
            setState(() {
              _currentIdx = idx;
            });
          },
        ),
        SizedBox(height: kVerticalPadding),
        Bullets(
          items: _items,
          pageController: _pageController,
          currentIdx: _currentIdx,
        ),
      ],
    );
  }
}
