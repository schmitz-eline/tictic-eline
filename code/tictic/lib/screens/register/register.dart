import 'package:flutter/material.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/scaffold_with_image.dart';
import 'package:tictic/screens/welcome/widgets/logo_welcome.dart';
import 'package:tictic/widgets/form/email_input.dart';
import 'package:tictic/widgets/form/password_input.dart';
import 'package:tictic/widgets/form/username_input.dart';

class Register extends StatelessWidget {
  Register({super.key});

  static const String routeName = '/register';

  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithImage(
      child: Padding(
        padding: const EdgeInsets.only(top: kVerticalPadding),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: kHorizontalPadding),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back),
                ),
              ],
            ),
            SizedBox(height: kVerticalPaddingL),
            LogoWelcome(),
            SizedBox(height: kVerticalPaddingXL),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalPadding,
              ),
              child: Form(
                key: _registerFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    UsernameInput(),
                    SizedBox(height: kVerticalPaddingL),
                    EmailInput(),
                    SizedBox(height: kVerticalPaddingL),
                    PasswordInput(),
                    SizedBox(height: kVerticalPaddingL),
                    ElevatedButton(
                      onPressed: () {
                        _registerFormKey.currentState?.validate();
                      },
                      child: Text(AppLocalizations.of(context)!.register),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}