import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic/screens/welcome/welcome_screen.dart';

import '../constants/sizes.dart';

class LogoWelcome extends StatelessWidget {
  const LogoWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, WelcomeScreen.routeName);
      },
      child: SvgPicture.asset(
        "assets/icons/logo.svg",
        height: MediaQuery.of(context).size.height * kLogoSizeRatioWelcome,
        width: MediaQuery.of(context).size.height * kLogoSizeRatioWelcome,
        semanticsLabel: 'Le logo TicTic',
      ),
    );
  }
}
