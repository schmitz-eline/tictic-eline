// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'TicTic Application';

  @override
  String get continueWithOutLogin => 'Continue without login';

  @override
  String get or => 'or';

  @override
  String get login => 'Login';

  @override
  String get register => 'Register';

  @override
  String get username_label => 'Username';

  @override
  String get username_placeholder => 'John Doe';

  @override
  String get user_email_label => 'E-mail';

  @override
  String get user_email_placeholder => 'john@doe.be';

  @override
  String get user_password_label => 'Password';

  @override
  String form_field_required(String field_name) {
    return 'The field \"$field_name\" is required.';
  }

  @override
  String get text_slide_1 => 'Financial harmony in your groups, made simple!';

  @override
  String get text_slide_2 => 'Instant calculations, fairness guaranteed with TicTic!';

  @override
  String get text_slide_3 => 'Tedious math? No thanks. Choose simplicity with TicTic!';

  @override
  String get text_slide_4 => 'TicTic: Share your expenses effortlessly!';
}
