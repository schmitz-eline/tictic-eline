// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Application TicTic';

  @override
  String get continueWithOutLogin => 'Continuer sans compte';

  @override
  String get or => 'ou';

  @override
  String get login => 'Connexion';

  @override
  String get register => 'Inscription';

  @override
  String get username_label => 'Nom d’utilisateur';

  @override
  String get username_placeholder => 'John Doe';

  @override
  String get user_email_label => 'E-mail';

  @override
  String get user_email_placeholder => 'john@doe.be';

  @override
  String get user_password_label => 'Mot de passe';

  @override
  String form_field_required(String field_name) {
    return 'Le champ \"$field_name\" est requis.';
  }

  @override
  String get text_slide_1 => 'L’harmonie financière dans vos groupes, en toute simplicité !';

  @override
  String get text_slide_2 => 'Calculs instantanés, équité garantie avec TicTic !';

  @override
  String get text_slide_3 => 'Calculs fastidieux ? Non merci. Optez pour la simplicité avec TicTic !';

  @override
  String get text_slide_4 => 'TicTic : Vos dépenses partagées en toute simplicité !';
}
