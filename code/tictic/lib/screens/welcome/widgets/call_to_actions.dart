import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/home/home_screen.dart';
import 'package:tictic/screens/login/login_screen.dart';
import 'package:tictic/screens/register/register_screen.dart';
import 'package:tictic/screens/welcome/widgets/text_divider.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class CallToActions extends StatelessWidget {
  const CallToActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            FirebaseAuth.instance.signInAnonymously().then((v) {
              Navigator.pushNamed(context, HomeScreen.routeName);
            });
          },
          style: ElevatedButton.styleFrom(backgroundColor: kMainColor),
          child: Text(AppLocalizations.of(context)!.continueWithOutLogin),
        ),
        SizedBox(height: kVerticalPadding),
        TextDivider(text: AppLocalizations.of(context)!.or),
        SizedBox(height: kVerticalPadding),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  child: Text(AppLocalizations.of(context)!.login),
                ),
                SizedBox(width: kHorizontalPadding),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterScreen.routeName);
                  },
                  child: Text(AppLocalizations.of(context)!.register),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}