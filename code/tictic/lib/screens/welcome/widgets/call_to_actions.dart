import 'package:flutter/material.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/welcome/widgets/text_divider.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';
import '../../register/register.dart';

class CallToActions extends StatelessWidget {
  const CallToActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
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
                  onPressed: () {},
                  child: Text(AppLocalizations.of(context)!.login),
                ),
                SizedBox(width: kHorizontalPadding),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Register.routeName);
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
