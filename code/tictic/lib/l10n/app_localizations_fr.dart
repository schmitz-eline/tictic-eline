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
  String get settings => 'Réglages';

  @override
  String get createAccount => 'Créer un compte';

  @override
  String get invite => 'Ajouter un ami';

  @override
  String get add_transaction => 'Ajouter une transaction';

  @override
  String get logout => 'Se déconnecter';

  @override
  String get login => 'Connexion';

  @override
  String get register => 'Inscription';

  @override
  String get username_label => 'Nom d\'utilisateur';

  @override
  String get username_placeholder => 'JohnDoe';

  @override
  String get user_email_label => 'E-mail';

  @override
  String get user_email_placeholder => 'john@doe.be';

  @override
  String get user_password_label => 'Mot de passe';

  @override
  String get already_have_account => 'Vous avez déjà un compte ?';

  @override
  String get dont_have_account => 'Vous n\'avez pas de compte ?';

  @override
  String get wrong_password => 'Mot de passe incorrect pour cet utilisateur.';

  @override
  String get invalid_email => 'Cette adresse e-mail est invalide.';

  @override
  String get user_disabled => 'Votre compte a été désactivé.';

  @override
  String get user_not_found => 'Cet utilisateur n’existe pas.';

  @override
  String get email_already_in_use => 'Cette adresse e-mail est déjà utilisée.';

  @override
  String get operation_not_allowed => 'Cette opération n’est pas autorisée.';

  @override
  String get account_exists_with_different_credential => 'Un compte existe déjà avec des identifiants différents.';

  @override
  String get invalid_credential => 'Les identifiants de votre compte ne sont pas valides.';

  @override
  String weak_password(Object nb) {
    return 'Votre mot de passe doit contenir au moins $nb caractères.';
  }

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
