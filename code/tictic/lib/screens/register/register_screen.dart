import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tictic/constants/fonts.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/home/home_screen.dart';
import 'package:tictic/screens/login/login_screen.dart';
import 'package:tictic/screens/scaffold_with_image.dart';
import 'package:tictic/widgets/logo_welcome.dart';
import 'package:tictic/widgets/anchor.dart';
import 'package:tictic/widgets/form/email_input.dart';
import 'package:tictic/widgets/form/password_input.dart';
import 'package:tictic/widgets/form/username_input.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  static const String routeName = '/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String? errorMessage;

  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController(
    text: kDebugMode ? "Daniel" : null,
  );

  final _emailController = TextEditingController(
    text: kDebugMode ? "daniel.schreurs@hepl.be" : null,
  );

  final _passwordController = TextEditingController(
    text: kDebugMode ? "1234567890" : null,
  );

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
                    UsernameInput(usernameController: _usernameController),
                    SizedBox(height: kVerticalPaddingL),
                    EmailInput(emailController: _emailController),
                    SizedBox(height: kVerticalPaddingL),
                    PasswordInput(passwordController: _passwordController),
                    (errorMessage == null
                        ? SizedBox.shrink()
                        : Padding(
                            padding: const EdgeInsets.only(
                              top: kVerticalPadding,
                            ),
                            child: Text(errorMessage!, style: kErrorStyle),
                          )),
                    SizedBox(height: kVerticalPadding),
                    ElevatedButton(
                      onPressed: () async {
                        _registerFormKey.currentState?.validate();
                        if (_registerFormKey.currentState!.validate()) {
                          try {
                            await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                )
                                .then((UserCredential userCredential) {
                                  Navigator.pushNamed(
                                    context,
                                    HomeScreen.routeName,
                                  );
                                });
                          } on FirebaseAuthException catch (e) {
                            // https://stackoverflow.com/a/73585472/5714898
                            setState(() {
                              switch (e.code) {
                                case 'email-already-in-use':
                                  errorMessage = AppLocalizations.of(
                                    context,
                                  )!.email_already_in_use;
                                  break;
                                case 'invalid-email':
                                  errorMessage = AppLocalizations.of(
                                    context,
                                  )!.invalid_email;
                                  break;
                                case 'operation-not-allowed':
                                  errorMessage = AppLocalizations.of(
                                    context,
                                  )!.operation_not_allowed;
                                  break;
                                case 'weak-password':
                                  errorMessage = AppLocalizations.of(
                                    context,
                                  )!.weak_password(9);
                                  break;
                              }
                            });
                          }
                        }
                      },
                      child: Text(AppLocalizations.of(context)!.register),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Text(
              AppLocalizations.of(context)!.already_have_account,
              style: kLabelStyle,
            ),
            Anchor(
              text: AppLocalizations.of(context)!.login,
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
