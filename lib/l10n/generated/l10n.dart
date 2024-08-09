// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `EN`
  String get en {
    return Intl.message(
      'EN',
      name: 'en',
      desc: '',
      args: [],
    );
  }

  /// `AR`
  String get ar {
    return Intl.message(
      'AR',
      name: 'ar',
      desc: '',
      args: [],
    );
  }

  /// `Alert`
  String get alert {
    return Intl.message(
      'Alert',
      name: 'alert',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to exit the app?`
  String get doUWantToExitTheApp {
    return Intl.message(
      'Do you want to exit the app?',
      name: 'doUWantToExitTheApp',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forgotYourPassword {
    return Intl.message(
      'Forgot your password?',
      name: 'forgotYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Register new account`
  String get registerNewAccount {
    return Intl.message(
      'Register new account',
      name: 'registerNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Enter`
  String get enter {
    return Intl.message(
      'Enter',
      name: 'enter',
      desc: '',
      args: [],
    );
  }

  /// `After receiving your application, we will notify you when your application to join us is accepted.`
  String
      get afterReceivingYourApplicationWeWillNotifyYouWhenYourApplicationToJoinUsIsAccepted {
    return Intl.message(
      'After receiving your application, we will notify you when your application to join us is accepted.',
      name:
          'afterReceivingYourApplicationWeWillNotifyYouWhenYourApplicationToJoinUsIsAccepted',
      desc: '',
      args: [],
    );
  }

  /// `Name/Association Name`
  String get nameAssociationName {
    return Intl.message(
      'Name/Association Name',
      name: 'nameAssociationName',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Additional information`
  String get additionalInformation {
    return Intl.message(
      'Additional information',
      name: 'additionalInformation',
      desc: '',
      args: [],
    );
  }

  /// `Optional`
  String get optional {
    return Intl.message(
      'Optional',
      name: 'optional',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `log into existing account`
  String get logIntoExistingAccount {
    return Intl.message(
      'log into existing account',
      name: 'logIntoExistingAccount',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Store`
  String get store {
    return Intl.message(
      'Store',
      name: 'store',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Vision And Mission`
  String get visionAndMission {
    return Intl.message(
      'Vision And Mission',
      name: 'visionAndMission',
      desc: '',
      args: [],
    );
  }

  /// `Vision`
  String get vision {
    return Intl.message(
      'Vision',
      name: 'vision',
      desc: '',
      args: [],
    );
  }

  /// `To be the pioneers in providing high-quality dates to pilgrims and charities in the Kingdom of Saudi Arabia, and to promote the spirit of giving and social solidarity.`
  String get visionBody {
    return Intl.message(
      'To be the pioneers in providing high-quality dates to pilgrims and charities in the Kingdom of Saudi Arabia, and to promote the spirit of giving and social solidarity.',
      name: 'visionBody',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get mission {
    return Intl.message(
      'Message',
      name: 'mission',
      desc: '',
      args: [],
    );
  }

  /// `nThrough the distribution of dates to pilgrims and charities, we seek to provide a distinguished service that meets the needs of the guests of God and needy groups, and reflects the values ​​of giving and goodness that characterize our Kingdom, while adhering to the highest standards of quality and transparency.`
  String get missionBody {
    return Intl.message(
      'nThrough the distribution of dates to pilgrims and charities, we seek to provide a distinguished service that meets the needs of the guests of God and needy groups, and reflects the values ​​of giving and goodness that characterize our Kingdom, while adhering to the highest standards of quality and transparency.',
      name: 'missionBody',
      desc: '',
      args: [],
    );
  }

  /// `News`
  String get news {
    return Intl.message(
      'News',
      name: 'news',
      desc: '',
      args: [],
    );
  }

  /// `An agreement has been established with the "Al-Bir" Association to distribute dates to pilgrims for the 2025 season.`
  String
      get anAgreementHasBeenEstablishedWithTheAlBirAssociationToDistributeDatesToPilgrimsForTheSeason {
    return Intl.message(
      'An agreement has been established with the "Al-Bir" Association to distribute dates to pilgrims for the 2025 season.',
      name:
          'anAgreementHasBeenEstablishedWithTheAlBirAssociationToDistributeDatesToPilgrimsForTheSeason',
      desc: '',
      args: [],
    );
  }

  /// `30 new trees were planted in a new area.`
  String get thirtyNewTreesWerePlantedInANewArea {
    return Intl.message(
      '30 new trees were planted in a new area.',
      name: 'thirtyNewTreesWerePlantedInANewArea',
      desc: '',
      args: [],
    );
  }

  /// `An agreement has been reached with government agencies to distribute dates to employees throughout the month of Ramadan 2025.`
  String
      get anAgreementHasBeenReachedWithGovernmentAgenciesToDistributeDatesToEmployeesThroughoutTheMonthOfRamadan {
    return Intl.message(
      'An agreement has been reached with government agencies to distribute dates to employees throughout the month of Ramadan 2025.',
      name:
          'anAgreementHasBeenReachedWithGovernmentAgenciesToDistributeDatesToEmployeesThroughoutTheMonthOfRamadan',
      desc: '',
      args: [],
    );
  }

  /// `Dates Products`
  String get datesProducts {
    return Intl.message(
      'Dates Products',
      name: 'datesProducts',
      desc: '',
      args: [],
    );
  }

  /// `Green dates`
  String get greenDates {
    return Intl.message(
      'Green dates',
      name: 'greenDates',
      desc: '',
      args: [],
    );
  }

  /// `add`
  String get add {
    return Intl.message(
      'add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Confirm order`
  String get confirmOrder {
    return Intl.message(
      'Confirm order',
      name: 'confirmOrder',
      desc: '',
      args: [],
    );
  }

  /// `Add more`
  String get addMore {
    return Intl.message(
      'Add more',
      name: 'addMore',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get orders {
    return Intl.message(
      'Orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contactUs {
    return Intl.message(
      'Contact Us',
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
