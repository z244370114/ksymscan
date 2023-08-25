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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `QR code and barcode production`
  String get appName {
    return Intl.message(
      'QR code and barcode production',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Hello!`
  String get hello {
    return Intl.message(
      'Hello!',
      name: 'hello',
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

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Scan`
  String get scanTitle {
    return Intl.message(
      'Scan',
      name: 'scanTitle',
      desc: '',
      args: [],
    );
  }

  /// `QR code`
  String get qrcode {
    return Intl.message(
      'QR code',
      name: 'qrcode',
      desc: '',
      args: [],
    );
  }

  /// `Barcode`
  String get barcode {
    return Intl.message(
      'Barcode',
      name: 'barcode',
      desc: '',
      args: [],
    );
  }

  /// `Share App`
  String get shareApp {
    return Intl.message(
      'Share App',
      name: 'shareApp',
      desc: '',
      args: [],
    );
  }

  /// `Copy successful`
  String get copySuccess {
    return Intl.message(
      'Copy successful',
      name: 'copySuccess',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete all history?`
  String get clearHistory {
    return Intl.message(
      'Are you sure you want to delete all history?',
      name: 'clearHistory',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get submits {
    return Intl.message(
      'OK',
      name: 'submits',
      desc: '',
      args: [],
    );
  }

  /// `No history record`
  String get noData {
    return Intl.message(
      'No history record',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `My`
  String get me {
    return Intl.message(
      'My',
      name: 'me',
      desc: '',
      args: [],
    );
  }

  /// `setting`
  String get setting {
    return Intl.message(
      'setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `User Agreement`
  String get userAgreement {
    return Intl.message(
      'User Agreement',
      name: 'userAgreement',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get aboutUs {
    return Intl.message(
      'About Us',
      name: 'aboutUs',
      desc: '',
      args: [],
    );
  }

  /// `Introduction`
  String get wfIntroduction {
    return Intl.message(
      'Introduction',
      name: 'wfIntroduction',
      desc: '',
      args: [],
    );
  }

  /// `Agree`
  String get agree {
    return Intl.message(
      'Agree',
      name: 'agree',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `close`
  String get close {
    return Intl.message(
      'close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Saved successfully`
  String get saveSuccess {
    return Intl.message(
      'Saved successfully',
      name: 'saveSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Save failed`
  String get saveFail {
    return Intl.message(
      'Save failed',
      name: 'saveFail',
      desc: '',
      args: [],
    );
  }

  /// `version`
  String get version {
    return Intl.message(
      'version',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Give Praise`
  String get givePraise {
    return Intl.message(
      'Give Praise',
      name: 'givePraise',
      desc: '',
      args: [],
    );
  }

  /// `Plain Text`
  String get labelText {
    return Intl.message(
      'Plain Text',
      name: 'labelText',
      desc: '',
      args: [],
    );
  }

  /// `URL`
  String get labelUrl {
    return Intl.message(
      'URL',
      name: 'labelUrl',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get labelName {
    return Intl.message(
      'Name',
      name: 'labelName',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get labelPhone {
    return Intl.message(
      'Phone',
      name: 'labelPhone',
      desc: '',
      args: [],
    );
  }

  /// `Company Name`
  String get labelFirm {
    return Intl.message(
      'Company Name',
      name: 'labelFirm',
      desc: '',
      args: [],
    );
  }

  /// `Position`
  String get labelPosts {
    return Intl.message(
      'Position',
      name: 'labelPosts',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get labelEmail {
    return Intl.message(
      'Email',
      name: 'labelEmail',
      desc: '',
      args: [],
    );
  }

  /// `CC Email`
  String get labelEmailAdd {
    return Intl.message(
      'CC Email',
      name: 'labelEmailAdd',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get labelAddress {
    return Intl.message(
      'Address',
      name: 'labelAddress',
      desc: '',
      args: [],
    );
  }

  /// `Network Name`
  String get labelWifiName {
    return Intl.message(
      'Network Name',
      name: 'labelWifiName',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get labelWifiPassword {
    return Intl.message(
      'Password',
      name: 'labelWifiPassword',
      desc: '',
      args: [],
    );
  }

  /// `Recipient`
  String get labelSjr {
    return Intl.message(
      'Recipient',
      name: 'labelSjr',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get labelZhuTi {
    return Intl.message(
      'Theme',
      name: 'labelZhuTi',
      desc: '',
      args: [],
    );
  }

  /// `App Address`
  String get labelApp {
    return Intl.message(
      'App Address',
      name: 'labelApp',
      desc: '',
      args: [],
    );
  }

  /// `The input cannot be empty, please re-enter`
  String get hintTextNull {
    return Intl.message(
      'The input cannot be empty, please re-enter',
      name: 'hintTextNull',
      desc: '',
      args: [],
    );
  }

  /// `Please enter text`
  String get hintText {
    return Intl.message(
      'Please enter text',
      name: 'hintText',
      desc: '',
      args: [],
    );
  }

  /// `Please enter URL`
  String get hintTextUrl {
    return Intl.message(
      'Please enter URL',
      name: 'hintTextUrl',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your name`
  String get hintTextName {
    return Intl.message(
      'Please enter your name',
      name: 'hintTextName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a phone number`
  String get hintTextPhone {
    return Intl.message(
      'Please enter a phone number',
      name: 'hintTextPhone',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the company name`
  String get hintTextFirm {
    return Intl.message(
      'Please enter the company name',
      name: 'hintTextFirm',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a position`
  String get hintTextPosts {
    return Intl.message(
      'Please enter a position',
      name: 'hintTextPosts',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get hintTextEmail {
    return Intl.message(
      'Please enter your email',
      name: 'hintTextEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter an address`
  String get hintTextAddress {
    return Intl.message(
      'Please enter an address',
      name: 'hintTextAddress',
      desc: '',
      args: [],
    );
  }

  /// `Network`
  String get hintTextWifi {
    return Intl.message(
      'Network',
      name: 'hintTextWifi',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get hintTextPassword {
    return Intl.message(
      'Password',
      name: 'hintTextPassword',
      desc: '',
      args: [],
    );
  }

  /// `The character set includes uppercase letters, numbers, common punctuation marks, and some control characters.`
  String get hintTextCode128A {
    return Intl.message(
      'The character set includes uppercase letters, numbers, common punctuation marks, and some control characters.',
      name: 'hintTextCode128A',
      desc: '',
      args: [],
    );
  }

  /// `The character set includes uppercase and lowercase letters, numbers, and common punctuation marks.`
  String get hintTextCode128B {
    return Intl.message(
      'The character set includes uppercase and lowercase letters, numbers, and common punctuation marks.',
      name: 'hintTextCode128B',
      desc: '',
      args: [],
    );
  }

  /// `The character set is a sequence of pure numbers.`
  String get hintTextCode128C {
    return Intl.message(
      'The character set is a sequence of pure numbers.',
      name: 'hintTextCode128C',
      desc: '',
      args: [],
    );
  }

  /// `It is the optimal combination of the above three character sets.`
  String get hintTextCode128Auto {
    return Intl.message(
      'It is the optimal combination of the above three character sets.',
      name: 'hintTextCode128Auto',
      desc: '',
      args: [],
    );
  }

  /// `The barcode generation is the 128 code specified by UPC/EAN to represent the meaning rules, and the encoding method is the same as the code128 barcode.`
  String get hintTextEAN128 {
    return Intl.message(
      'The barcode generation is the 128 code specified by UPC/EAN to represent the meaning rules, and the encoding method is the same as the code128 barcode.',
      name: 'hintTextEAN128',
      desc: '',
      args: [],
    );
  }

  /// `The barcode generation character set includes numbers, uppercase letters and - . $ / + % * spaces and other characters, where * is only used to mark the beginning and end.`
  String get hintTextCode39 {
    return Intl.message(
      'The barcode generation character set includes numbers, uppercase letters and - . \$ / + % * spaces and other characters, where * is only used to mark the beginning and end.',
      name: 'hintTextCode39',
      desc: '',
      args: [],
    );
  }

  /// `The barcode is generated in full ASCII mode, and all 128 ASCII characters can be used.`
  String get hintTextCode93 {
    return Intl.message(
      'The barcode is generated in full ASCII mode, and all 128 ASCII characters can be used.',
      name: 'hintTextCode93',
      desc: '',
      args: [],
    );
  }

  /// `The barcode only allows 11 kinds of characters, which are 0-9 and -. In order to reduce the error rate of inspection, a two-digit inspection code can be used.`
  String get hintTextCode11 {
    return Intl.message(
      'The barcode only allows 11 kinds of characters, which are 0-9 and -. In order to reduce the error rate of inspection, a two-digit inspection code can be used.',
      name: 'hintTextCode11',
      desc: '',
      args: [],
    );
  }

  /// `Barcodes must be pure numbers 0-9 with a one-digit checksum.`
  String get hintTextMSI {
    return Intl.message(
      'Barcodes must be pure numbers 0-9 with a one-digit checksum.',
      name: 'hintTextMSI',
      desc: '',
      args: [],
    );
  }

  /// `The barcode of the product is pure numbers, and the number of digits is 12. After encoding, a check code is added to form a 13-digit number.`
  String get hintTextEAN13 {
    return Intl.message(
      'The barcode of the product is pure numbers, and the number of digits is 12. After encoding, a check code is added to form a 13-digit number.',
      name: 'hintTextEAN13',
      desc: '',
      args: [],
    );
  }

  /// `Commodity barcodes are pure numbers, and the number of digits is 7. After encoding, a check code is added to form an 8-digit number.`
  String get hintTextEAN8 {
    return Intl.message(
      'Commodity barcodes are pure numbers, and the number of digits is 7. After encoding, a check code is added to form an 8-digit number.',
      name: 'hintTextEAN8',
      desc: '',
      args: [],
    );
  }

  /// `The barcode of a barcode product is a pure number, and the number of digits is 11. After encoding, a check code is added to form a 12-digit number. It is mainly used in the United States and Canada.`
  String get hintTextUPCA {
    return Intl.message(
      'The barcode of a barcode product is a pure number, and the number of digits is 11. After encoding, a check code is added to form a 12-digit number. It is mainly used in the United States and Canada.',
      name: 'hintTextUPCA',
      desc: '',
      args: [],
    );
  }

  /// `The barcode of a barcode product is a pure number, which is reduced from UPC-A. The number of digits is 7, and the first digit must be 0. After encoding, a check code is added to form an 8-digit number.`
  String get hintTextUPCE {
    return Intl.message(
      'The barcode of a barcode product is a pure number, which is reduced from UPC-A. The number of digits is 7, and the first digit must be 0. After encoding, a check code is added to form an 8-digit number.',
      name: 'hintTextUPCE',
      desc: '',
      args: [],
    );
  }

  /// `The character set includes numbers and - $ :/.+ and ABCD and other characters, where ABCD is only used for the beginning or end, and is used as an identifier.`
  String get hintTextCodabar {
    return Intl.message(
      'The character set includes numbers and - \$ :/.+ and ABCD and other characters, where ABCD is only used for the beginning or end, and is used as an identifier.',
      name: 'hintTextCodabar',
      desc: '',
      args: [],
    );
  }

  /// `Contains uppercase letters (A-Z), numbers (0-9) and special symbols (such as spaces, dashes, dots, dollar signs, etc.)`
  String get hintTextExtended {
    return Intl.message(
      'Contains uppercase letters (A-Z), numbers (0-9) and special symbols (such as spaces, dashes, dots, dollar signs, etc.)',
      name: 'hintTextExtended',
      desc: '',
      args: [],
    );
  }

  /// `Start creating`
  String get btnCreate {
    return Intl.message(
      'Start creating',
      name: 'btnCreate',
      desc: '',
      args: [],
    );
  }

  /// `Preview Image`
  String get lookPhoto {
    return Intl.message(
      'Preview Image',
      name: 'lookPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Plain text, business card, email, mobile number, website, Wi-Fi, SMS, application`
  String get qrTitle {
    return Intl.message(
      'Plain text, business card, email, mobile number, website, Wi-Fi, SMS, application',
      name: 'qrTitle',
      desc: '',
      args: [],
    );
  }

  /// `Code 128,Code 128A, Code 128B,Code 128C, Code 39,Code 93,Extended,Codabar,EAN-13,EAN-8,UPC-A,UPC-E`
  String get barTitle {
    return Intl.message(
      'Code 128,Code 128A, Code 128B,Code 128C, Code 39,Code 93,Extended,Codabar,EAN-13,EAN-8,UPC-A,UPC-E',
      name: 'barTitle',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
