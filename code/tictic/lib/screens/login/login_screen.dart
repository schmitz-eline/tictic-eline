import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tictic/constants/fonts.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/register/register_screen.dart';
import 'package:tictic/screens/scaffold_with_image.dart';
import 'package:tictic/widgets/logo_welcome.dart';
import 'package:tictic/widgets/anchor.dart';
import 'package:tictic/widgets/form/email_input.dart';
import 'package:tictic/widgets/form/password_input.dart';
import '../home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? errorMessage;

  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();

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
                key: _loginFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    EmailInput(emailController: _emailController),
                    SizedBox(height: kVerticalPaddingL),
                    PasswordInput(passwordController: _passwordController),
                    (errorMessage == null
                        ? SizedBox.shrink()
                        : Padding(
                            padding: const EdgeInsets.only(
                              left: kHorizontalPaddingS,
                              top: kVerticalPadding,
                            ),
                            child: Text(errorMessage!, style: kErrorStyle),
                          )),
                    SizedBox(height: kVerticalPadding),
                    ElevatedButton(
                      onPressed: () async {
                        _loginFormKey.currentState?.validate();
                        if (_loginFormKey.currentState!.validate()) {
                          try {
                            await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
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
                                case 'wrong-password':
                                  errorMessage = AppLocalizations.of(
                                    context,
                                  )!.wrong_password;
                                  break;
                                case 'invalid-credential':
                                  errorMessage = AppLocalizations.of(
                                    context,
                                  )!.invalid_credential;
                                  break;
                                case 'invalid-email':
                                  errorMessage = AppLocalizations.of(
                                    context,
                                  )!.invalid_email;
                                  break;
                                case 'user-disabled':
                                  errorMessage = AppLocalizations.of(
                                    context,
                                  )!.user_disabled;
                                  break;
                                case 'user-not-found:':
                                  errorMessage = AppLocalizations.of(
                                    context,
                                  )!.user_not_found;
                                  break;
                              }
                            });
                            print(e.code);
                          }
                        }
                      },
                      child: Text(AppLocalizations.of(context)!.login),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Text(
              AppLocalizations.of(context)!.dont_have_account,
              style: kLabelStyle,
            ),
            Anchor(
              text: AppLocalizations.of(context)!.register,
              onTap: () {
                Navigator.pushNamed(context, RegisterScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
