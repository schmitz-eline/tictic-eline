import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Application TicTic (en)'**
  String get appTitle;

  /// No description provided for @continueWithOutLogin.
  ///
  /// In en, this message translates to:
  /// **'Continue without login'**
  String get continueWithOutLogin;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get or;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @invite.
  ///
  /// In en, this message translates to:
  /// **'Invite a friend'**
  String get invite;

  /// No description provided for @add_transaction.
  ///
  /// In en, this message translates to:
  /// **'Add Transaction'**
  String get add_transaction;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @username_label.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username_label;

  /// No description provided for @username_placeholder.
  ///
  /// In en, this message translates to:
  /// **'JohnDoe'**
  String get username_placeholder;

  /// No description provided for @user_email_label.
  ///
  /// In en, this message translates to:
  /// **'E-mail'**
  String get user_email_label;

  /// No description provided for @user_email_placeholder.
  ///
  /// In en, this message translates to:
  /// **'john@doe.be'**
  String get user_email_placeholder;

  /// No description provided for @user_password_label.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get user_password_label;

  /// No description provided for @already_have_account.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get already_have_account;

  /// No description provided for @dont_have_account.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dont_have_account;

  /// No description provided for @wrong_password.
  ///
  /// In en, this message translates to:
  /// **'Wrong password provided for that user'**
  String get wrong_password;

  /// No description provided for @invalid_email.
  ///
  /// In en, this message translates to:
  /// **'This email is invalid'**
  String get invalid_email;

  /// No description provided for @user_disabled.
  ///
  /// In en, this message translates to:
  /// **'Your account has been disabled'**
  String get user_disabled;

  /// No description provided for @user_not_found.
  ///
  /// In en, this message translates to:
  /// **'This user does not exist'**
  String get user_not_found;

  /// No description provided for @email_already_in_use.
  ///
  /// In en, this message translates to:
  /// **'This email is already in use'**
  String get email_already_in_use;

  /// No description provided for @operation_not_allowed.
  ///
  /// In en, this message translates to:
  /// **'This operation is not allowed'**
  String get operation_not_allowed;

  /// No description provided for @account_exists_with_different_credential.
  ///
  /// In en, this message translates to:
  /// **'Wrong password provided for that user'**
  String get account_exists_with_different_credential;

  /// No description provided for @invalid_credential.
  ///
  /// In en, this message translates to:
  /// **'Your account credential is not valid'**
  String get invalid_credential;

  /// Error message when the password is too short
  ///
  /// In en, this message translates to:
  /// **'Your password must be at least {nb} characters'**
  String weak_password(Object nb);

  /// Error message when a form field is required
  ///
  /// In en, this message translates to:
  /// **'The field \"{field_name}\"is required.'**
  String form_field_required(String field_name);

  /// No description provided for @text_slide_1.
  ///
  /// In en, this message translates to:
  /// **'Financial harmony in your groups, made simple!'**
  String get text_slide_1;

  /// No description provided for @text_slide_2.
  ///
  /// In en, this message translates to:
  /// **'Instant calculations, fairness guaranteed with TicTic!'**
  String get text_slide_2;

  /// No description provided for @text_slide_3.
  ///
  /// In en, this message translates to:
  /// **'Tedious math? No thanks. Choose simplicity with TicTic!'**
  String get text_slide_3;

  /// No description provided for @text_slide_4.
  ///
  /// In en, this message translates to:
  /// **'TicTic: Share your expenses effortlessly!'**
  String get text_slide_4;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'fr': return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
