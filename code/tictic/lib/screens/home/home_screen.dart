import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/widgets/link_with_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final String routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              LinkWithIcon(
                onTap: () {},
                icon: Icons.settings,
                text: AppLocalizations.of(context)!.settings,
              ),
              LinkWithIcon(
                onTap: () {},
                icon: Icons.group,
                text: AppLocalizations.of(context)!.createAccount,
              ),
              LinkWithIcon(
                onTap: () {},
                icon: Icons.group_add,
                text: AppLocalizations.of(context)!.invite,
              ),
              LinkWithIcon(
                onTap: () {},
                icon: Icons.receipt_long,
                text: AppLocalizations.of(context)!.add_transaction,
              ),
              LinkWithIcon(
                onTap: () {
                  FirebaseAuth.instance.signOut().then((e) {
                    Navigator.of(
                      context,
                    ).pushNamedAndRemoveUntil('/', (route) => false);
                  });
                },
                icon: Icons.logout,
                text: AppLocalizations.of(context)!.logout,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Bonjour"),
        actions: [
          SvgPicture.asset(
            colorFilter: ColorFilter.mode(kBackgroundColor, BlendMode.srcIn),
            "./assets/icons/logo.svg",
            width: kLogoSize,
          ),
          SizedBox(width: kVerticalPadding),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.of(
                  context,
                ).pushNamedAndRemoveUntil('/', (route) => false);
              },
              child: Text("Se déconnecter"),
            ),
            Text('Welcome to the Home Screen!'),
          ],
        ),
      ),
    );
  }
}
