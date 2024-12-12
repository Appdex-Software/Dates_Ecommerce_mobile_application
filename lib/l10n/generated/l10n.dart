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

  /// `New Details`
  String get newDetails {
    return Intl.message(
      'New Details',
      name: 'newDetails',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `inventory`
  String get inventory {
    return Intl.message(
      'inventory',
      name: 'inventory',
      desc: '',
      args: [],
    );
  }

  /// `Orders in progress`
  String get ordersInProgress {
    return Intl.message(
      'Orders in progress',
      name: 'ordersInProgress',
      desc: '',
      args: [],
    );
  }

  /// `Join Requests`
  String get joinRequests {
    return Intl.message(
      'Join Requests',
      name: 'joinRequests',
      desc: '',
      args: [],
    );
  }

  /// `New post`
  String get newPost {
    return Intl.message(
      'New post',
      name: 'newPost',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get accept {
    return Intl.message(
      'Accept',
      name: 'accept',
      desc: '',
      args: [],
    );
  }

  /// `Decline`
  String get decline {
    return Intl.message(
      'Decline',
      name: 'decline',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get review {
    return Intl.message(
      'Review',
      name: 'review',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get available {
    return Intl.message(
      'Available',
      name: 'available',
      desc: '',
      args: [],
    );
  }

  /// `Unavailable`
  String get unavailable {
    return Intl.message(
      'Unavailable',
      name: 'unavailable',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email and password`
  String get pleaseEnterYourEmailAndPassword {
    return Intl.message(
      'Please enter your email and password',
      name: 'pleaseEnterYourEmailAndPassword',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `The item has been added successfully`
  String get theItemHasBeenAddedSuccessfully {
    return Intl.message(
      'The item has been added successfully',
      name: 'theItemHasBeenAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `The user has been added successfully`
  String get theUserHasBeenAddedSuccessfully {
    return Intl.message(
      'The user has been added successfully',
      name: 'theUserHasBeenAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `The user data has been edited successfully`
  String get theUserDataHasBeenEditedSuccessfully {
    return Intl.message(
      'The user data has been edited successfully',
      name: 'theUserDataHasBeenEditedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Failed to login`
  String get failedToLogin {
    return Intl.message(
      'Failed to login',
      name: 'failedToLogin',
      desc: '',
      args: [],
    );
  }

  /// `Comment`
  String get comment {
    return Intl.message(
      'Comment',
      name: 'comment',
      desc: '',
      args: [],
    );
  }

  /// `The order has been created successfully`
  String get theOrderHasBeenCreatedSuccessfully {
    return Intl.message(
      'The order has been created successfully',
      name: 'theOrderHasBeenCreatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `The order has been edited successfully`
  String get theOrderHasBeenEditedSuccessfully {
    return Intl.message(
      'The order has been edited successfully',
      name: 'theOrderHasBeenEditedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `The order has failed`
  String get theOrderHasFailed {
    return Intl.message(
      'The order has failed',
      name: 'theOrderHasFailed',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Your order number is`
  String get yourOrderNumberIs {
    return Intl.message(
      'Your order number is',
      name: 'yourOrderNumberIs',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Street`
  String get street {
    return Intl.message(
      'Street',
      name: 'street',
      desc: '',
      args: [],
    );
  }

  /// `ZipCode`
  String get zipCode {
    return Intl.message(
      'ZipCode',
      name: 'zipCode',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `You have been registered successfully`
  String get youHaveBeenRegisteredSuccessfully {
    return Intl.message(
      'You have been registered successfully',
      name: 'youHaveBeenRegisteredSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `you have error in one of the following fields`
  String get youHaveToErrorInOneOfTheFollowingFields {
    return Intl.message(
      'you have error in one of the following fields',
      name: 'youHaveToErrorInOneOfTheFollowingFields',
      desc: '',
      args: [],
    );
  }

  /// `Phone number is required`
  String get phoneNumberIsRequired {
    return Intl.message(
      'Phone number is required',
      name: 'phoneNumberIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `This field cannot be empty`
  String get emptyValidationError {
    return Intl.message(
      'This field cannot be empty',
      name: 'emptyValidationError',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `This item has been added already`
  String get thisItemHasBeenAddedAlready {
    return Intl.message(
      'This item has been added already',
      name: 'thisItemHasBeenAddedAlready',
      desc: '',
      args: [],
    );
  }

  /// `Product Image`
  String get productImage {
    return Intl.message(
      'Product Image',
      name: 'productImage',
      desc: '',
      args: [],
    );
  }

  /// `Product Name`
  String get productName {
    return Intl.message(
      'Product Name',
      name: 'productName',
      desc: '',
      args: [],
    );
  }

  /// `Product Description`
  String get productDescription {
    return Intl.message(
      'Product Description',
      name: 'productDescription',
      desc: '',
      args: [],
    );
  }

  /// `Total Quantity`
  String get totalQuantity {
    return Intl.message(
      'Total Quantity',
      name: 'totalQuantity',
      desc: '',
      args: [],
    );
  }

  /// `Family`
  String get family {
    return Intl.message(
      'Family',
      name: 'family',
      desc: '',
      args: [],
    );
  }

  /// `Charities`
  String get charities {
    return Intl.message(
      'Charities',
      name: 'charities',
      desc: '',
      args: [],
    );
  }

  /// `Fasting`
  String get fasting {
    return Intl.message(
      'Fasting',
      name: 'fasting',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `The sum of families quantity, fasting quantity, and charities quantity must be less than or equal to total quantity`
  String
      get theSumOfFamiliesQuantityFastingQuantityAndCharitiesQuantityMustBeLessThanOrEqualToTotalQuantity {
    return Intl.message(
      'The sum of families quantity, fasting quantity, and charities quantity must be less than or equal to total quantity',
      name:
          'theSumOfFamiliesQuantityFastingQuantityAndCharitiesQuantityMustBeLessThanOrEqualToTotalQuantity',
      desc: '',
      args: [],
    );
  }

  /// `Order status`
  String get orderStatus {
    return Intl.message(
      'Order status',
      name: 'orderStatus',
      desc: '',
      args: [],
    );
  }

  /// `News Image`
  String get newsImage {
    return Intl.message(
      'News Image',
      name: 'newsImage',
      desc: '',
      args: [],
    );
  }

  /// `News Title`
  String get newsTitle {
    return Intl.message(
      'News Title',
      name: 'newsTitle',
      desc: '',
      args: [],
    );
  }

  /// `News Details`
  String get newsDetails {
    return Intl.message(
      'News Details',
      name: 'newsDetails',
      desc: '',
      args: [],
    );
  }

  /// `user first name`
  String get userFirstName {
    return Intl.message(
      'user first name',
      name: 'userFirstName',
      desc: '',
      args: [],
    );
  }

  /// `user last name`
  String get userLastName {
    return Intl.message(
      'user last name',
      name: 'userLastName',
      desc: '',
      args: [],
    );
  }

  /// `Role`
  String get role {
    return Intl.message(
      'Role',
      name: 'role',
      desc: '',
      args: [],
    );
  }

  /// `File is opening`
  String get fileIsOpening {
    return Intl.message(
      'File is opening',
      name: 'fileIsOpening',
      desc: '',
      args: [],
    );
  }

  /// `Customer Type`
  String get customerType {
    return Intl.message(
      'Customer Type',
      name: 'customerType',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get quantity {
    return Intl.message(
      'Quantity',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Invoice`
  String get invoice {
    return Intl.message(
      'Invoice',
      name: 'invoice',
      desc: '',
      args: [],
    );
  }

  /// `Print`
  String get print {
    return Intl.message(
      'Print',
      name: 'print',
      desc: '',
      args: [],
    );
  }

  /// `Print all`
  String get printAll {
    return Intl.message(
      'Print all',
      name: 'printAll',
      desc: '',
      args: [],
    );
  }

  /// `Book`
  String get book {
    return Intl.message(
      'Book',
      name: 'book',
      desc: '',
      args: [],
    );
  }

  /// `Canceled`
  String get canceled {
    return Intl.message(
      'Canceled',
      name: 'canceled',
      desc: '',
      args: [],
    );
  }

  /// `Fulfilment`
  String get fulfilment {
    return Intl.message(
      'Fulfilment',
      name: 'fulfilment',
      desc: '',
      args: [],
    );
  }

  /// `Shipped`
  String get shipped {
    return Intl.message(
      'Shipped',
      name: 'shipped',
      desc: '',
      args: [],
    );
  }

  /// `order status has been changed`
  String get orderStatusHasBeenChanged {
    return Intl.message(
      'order status has been changed',
      name: 'orderStatusHasBeenChanged',
      desc: '',
      args: [],
    );
  }

  /// `Received`
  String get received {
    return Intl.message(
      'Received',
      name: 'received',
      desc: '',
      args: [],
    );
  }

  /// `failed to update the status of the order`
  String get failedToUpdateTheStatusOfTheOrder {
    return Intl.message(
      'failed to update the status of the order',
      name: 'failedToUpdateTheStatusOfTheOrder',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get report {
    return Intl.message(
      'Report',
      name: 'report',
      desc: '',
      args: [],
    );
  }

  /// `Orders Reports`
  String get ordersReport {
    return Intl.message(
      'Orders Reports',
      name: 'ordersReport',
      desc: '',
      args: [],
    );
  }

  /// `Products Reports`
  String get productsReport {
    return Intl.message(
      'Products Reports',
      name: 'productsReport',
      desc: '',
      args: [],
    );
  }

  /// `Begin Date`
  String get beginDate {
    return Intl.message(
      'Begin Date',
      name: 'beginDate',
      desc: '',
      args: [],
    );
  }

  /// `End Date`
  String get endDate {
    return Intl.message(
      'End Date',
      name: 'endDate',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get year {
    return Intl.message(
      'Year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `Month`
  String get month {
    return Intl.message(
      'Month',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `User's email`
  String get userEmail {
    return Intl.message(
      'User\'s email',
      name: 'userEmail',
      desc: '',
      args: [],
    );
  }

  /// `Data not found`
  String get dataNotFound {
    return Intl.message(
      'Data not found',
      name: 'dataNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Not Fulfilment`
  String get notFulfilment {
    return Intl.message(
      'Not Fulfilment',
      name: 'notFulfilment',
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
