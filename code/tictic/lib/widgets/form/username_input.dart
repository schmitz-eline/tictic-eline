import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import 'my_text_input.dart';

class UsernameInput extends StatelessWidget {
  const UsernameInput({super.key, this.usernameController});

  final TextEditingController? usernameController;

  @override
  Widget build(BuildContext context) {
    return MyTextInput(
      controller: usernameController,
      labelText: AppLocalizations.of(context)!.username_label,
      prefixIcon: Icon(Icons.person),
      hintText: AppLocalizations.of(context)!.username_placeholder,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppLocalizations.of(
            context,
          )!.form_field_required(AppLocalizations.of(context)!.username_label);
        }
        return null;
      },
    );
  }
}
