import 'package:flutter/material.dart';
import 'package:tictic/screens/scaffold_with_image.dart';
import 'package:tictic/screens/welcome/widgets/call_to_actions.dart';
import 'package:tictic/screens/welcome/widgets/logo_welcome.dart';
import 'package:tictic/screens/welcome/widgets/text_slider_with_bullets.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  static const String routeName = '/';

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

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