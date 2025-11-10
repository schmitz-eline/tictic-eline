import 'package:flutter/material.dart';
import 'package:tictic/screens/scaffold_with_image.dart';
import 'package:tictic/screens/welcome/widgets/call_to_actions.dart';
import 'package:tictic/widgets/logo_welcome.dart';
import 'package:tictic/screens/welcome/widgets/text_slider_with_bullets.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithImage(
      child: Column(
        children: [
          Spacer(),
          LogoWelcome(),
          Spacer(),
          TextSliderWithBullets(),
          Spacer(),
          CallToActions(),
        ],
      ),
    );
  }
}
