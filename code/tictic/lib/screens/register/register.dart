import 'package:flutter/material.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/screens/scaffold_with_image.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  static const String routeName = '/register';

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
            Text("Register"),
          ],
        ),
      ),
    );
  }
}