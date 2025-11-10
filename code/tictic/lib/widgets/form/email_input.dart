import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import 'my_text_input.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({super.key, this.emailController});

  final TextEditingController? emailController;

  @override
  Widget build(BuildContext context) {
    return MyTextInput(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      labelText: AppLocalizations.of(context)!.user_email_label,
      prefixIcon: Icon(Icons.email),
      hintText: AppLocalizations.of(context)!.user_email_placeholder,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppLocalizations.of(context)!.form_field_required(
            AppLocalizations.of(context)!.user_email_label,
          );
        }
        return null;
      },
    );
  }
}
