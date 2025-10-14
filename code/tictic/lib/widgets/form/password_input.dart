import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import 'my_text_input.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return  MyTextInput(
      obscureText: true,
      labelText: AppLocalizations.of(
        context,
      )!.user_password_label,
      prefixIcon: Icon(Icons.password),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppLocalizations.of(
            context,
          )!.form_field_required(
            AppLocalizations.of(context)!.user_password_label,
          );
        }
        return null;
      },
    );
  }
}