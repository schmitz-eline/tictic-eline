import 'package:flutter/material.dart';
import 'package:tictic/screens/register/register.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';
import 'text_divider.dart';

class CallToActions extends StatelessWidget {
  const CallToActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: kMainColor),
          child: Text("Continuer sans compte"),
        ),
        SizedBox(height: kVerticalPadding),
        TextDivider(text: "Ou"),
        SizedBox(height: kVerticalPadding),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalPadding
            ),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Je me connecte"),
                ),
                SizedBox(width: kHorizontalPadding),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      Register.routeName,
                    );
                  },
                  child: Text("Créer mon compte"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
