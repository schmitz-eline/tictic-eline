// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Application TicTic (en)';

  @override
  String get continueWithOutLogin => 'Continue without login';

  @override
  String get or => 'or';

  @override
  String get settings => 'Settings';

  @override
  String get createAccount => 'Create Account';

  @override
  String get invite => 'Invite a friend';

  @override
  String get add_transaction => 'Add Transaction';

  @override
  String get logout => 'Logout';

  @override
  String get login => 'Login';

  @override
  String get register => 'Register';

  @override
  String get username_label => 'Username';

  @override
  String get username_placeholder => 'JohnDoe';

  @override
  String get user_email_label => 'E-mail';

  @override
  String get user_email_placeholder => 'john@doe.be';

  @override
  String get user_password_label => 'Password';

  @override
  String get already_have_account => 'Already have an account?';

  @override
  String get dont_have_account => 'Don\'t have an account?';

  @override
  String get wrong_password => 'Wrong password provided for that user';

  @override
  String get invalid_email => 'This email is invalid';

  @override
  String get user_disabled => 'Your account has been disabled';

  @override
  String get user_not_found => 'This user does not exist';

  @override
  String get email_already_in_use => 'This email is already in use';

  @override
  String get operation_not_allowed => 'This operation is not allowed';

  @override
  String get account_exists_with_different_credential => 'Wrong password provided for that user';

  @override
  String get invalid_credential => 'Your account credential is not valid';

  @override
  String weak_password(Object nb) {
    return 'Your password must be at least $nb characters';
  }

  @override
  String form_field_required(String field_name) {
    return 'The field \"$field_name\"is required.';
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
