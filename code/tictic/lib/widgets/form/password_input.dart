import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import 'my_text_input.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key, this.passwordController});

  final TextEditingController? passwordController;

  @override
  Widget build(BuildContext context) {
    return MyTextInput(
      controller: passwordController,
      obscureText: true,
      labelText: AppLocalizations.of(context)!.user_password_label,
      prefixIcon: Icon(Icons.password),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppLocalizations.of(context)!.form_field_required(
            AppLocalizations.of(context)!.user_password_label,
          );
        }
        return null;
      },
    );
  }
}
