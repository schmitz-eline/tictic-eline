import 'package:flutter/material.dart';
import 'package:tictic/screens/welcome/widgets/logo_welcome.dart';
import 'package:tictic/screens/welcome/widgets/text_divider.dart';
import 'package:tictic/screens/welcome/widgets/text_slider_with_bullets.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/back1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Spacer(),
              LogoWelcome(),
              Spacer(),
              TextSliderWithBullets(),
              Spacer(),
              TextDivider(text: "Ou"),
            ],
          ),
        ),
      ),
    );
  }
}