// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("About Us"),
        "agree": MessageLookupByLibrary.simpleMessage("Agree"),
        "and": MessageLookupByLibrary.simpleMessage("and"),
        "appName": MessageLookupByLibrary.simpleMessage(
            "QR code and barcode production"),
        "barTitle": MessageLookupByLibrary.simpleMessage(
            "Code 128,Code 128A, Code 128B,Code 128C, Code 39,Code 93,Extended,Codabar,EAN-13,EAN-8,UPC-A,UPC-E"),
        "barcode": MessageLookupByLibrary.simpleMessage("Barcode"),
        "btnCreate": MessageLookupByLibrary.simpleMessage("Start creating"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "clearHistory": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete all history?"),
        "close": MessageLookupByLibrary.simpleMessage("close"),
        "copySuccess": MessageLookupByLibrary.simpleMessage("Copy successful"),
        "givePraise": MessageLookupByLibrary.simpleMessage("Give Praise"),
        "hello": MessageLookupByLibrary.simpleMessage("Hello!"),
        "hintText": MessageLookupByLibrary.simpleMessage("Please enter text"),
        "hintTextAddress":
            MessageLookupByLibrary.simpleMessage("Please enter an address"),
        "hintTextCodabar": MessageLookupByLibrary.simpleMessage(
            "The character set includes numbers and - \$ :/.+ and ABCD and other characters, where ABCD is only used for the beginning or end, and is used as an identifier."),
        "hintTextCode11": MessageLookupByLibrary.simpleMessage(
            "The barcode only allows 11 kinds of characters, which are 0-9 and -. In order to reduce the error rate of inspection, a two-digit inspection code can be used."),
        "hintTextCode128A": MessageLookupByLibrary.simpleMessage(
            "The character set includes uppercase letters, numbers, common punctuation marks, and some control characters."),
        "hintTextCode128Auto": MessageLookupByLibrary.simpleMessage(
            "It is the optimal combination of the above three character sets."),
        "hintTextCode128B": MessageLookupByLibrary.simpleMessage(
            "The character set includes uppercase and lowercase letters, numbers, and common punctuation marks."),
        "hintTextCode128C": MessageLookupByLibrary.simpleMessage(
            "The character set is a sequence of pure numbers."),
        "hintTextCode39": MessageLookupByLibrary.simpleMessage(
            "The barcode generation character set includes numbers, uppercase letters and - . \$ / + % * spaces and other characters, where * is only used to mark the beginning and end."),
        "hintTextCode93": MessageLookupByLibrary.simpleMessage(
            "The barcode is generated in full ASCII mode, and all 128 ASCII characters can be used."),
        "hintTextEAN128": MessageLookupByLibrary.simpleMessage(
            "The barcode generation is the 128 code specified by UPC/EAN to represent the meaning rules, and the encoding method is the same as the code128 barcode."),
        "hintTextEAN13": MessageLookupByLibrary.simpleMessage(
            "The barcode of the product is pure numbers, and the number of digits is 12. After encoding, a check code is added to form a 13-digit number."),
        "hintTextEAN8": MessageLookupByLibrary.simpleMessage(
            "Commodity barcodes are pure numbers, and the number of digits is 7. After encoding, a check code is added to form an 8-digit number."),
        "hintTextEmail":
            MessageLookupByLibrary.simpleMessage("Please enter your email"),
        "hintTextExtended": MessageLookupByLibrary.simpleMessage(
            "Contains uppercase letters (A-Z), numbers (0-9) and special symbols (such as spaces, dashes, dots, dollar signs, etc.)"),
        "hintTextFirm": MessageLookupByLibrary.simpleMessage(
            "Please enter the company name"),
        "hintTextMSI": MessageLookupByLibrary.simpleMessage(
            "Barcodes must be pure numbers 0-9 with a one-digit checksum."),
        "hintTextName":
            MessageLookupByLibrary.simpleMessage("Please enter your name"),
        "hintTextNull": MessageLookupByLibrary.simpleMessage(
            "The input cannot be empty, please re-enter"),
        "hintTextPassword": MessageLookupByLibrary.simpleMessage("Password"),
        "hintTextPhone":
            MessageLookupByLibrary.simpleMessage("Please enter a phone number"),
        "hintTextPosts":
            MessageLookupByLibrary.simpleMessage("Please enter a position"),
        "hintTextUPCA": MessageLookupByLibrary.simpleMessage(
            "The barcode of a barcode product is a pure number, and the number of digits is 11. After encoding, a check code is added to form a 12-digit number. It is mainly used in the United States and Canada."),
        "hintTextUPCE": MessageLookupByLibrary.simpleMessage(
            "The barcode of a barcode product is a pure number, which is reduced from UPC-A. The number of digits is 7, and the first digit must be 0. After encoding, a check code is added to form an 8-digit number."),
        "hintTextUrl": MessageLookupByLibrary.simpleMessage("Please enter URL"),
        "hintTextWifi": MessageLookupByLibrary.simpleMessage("Network"),
        "history": MessageLookupByLibrary.simpleMessage("History"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "labelAddress": MessageLookupByLibrary.simpleMessage("Address"),
        "labelApp": MessageLookupByLibrary.simpleMessage("App Address"),
        "labelEmail": MessageLookupByLibrary.simpleMessage("Email"),
        "labelEmailAdd": MessageLookupByLibrary.simpleMessage("CC Email"),
        "labelFirm": MessageLookupByLibrary.simpleMessage("Company Name"),
        "labelName": MessageLookupByLibrary.simpleMessage("Name"),
        "labelPhone": MessageLookupByLibrary.simpleMessage("Phone"),
        "labelPosts": MessageLookupByLibrary.simpleMessage("Position"),
        "labelSjr": MessageLookupByLibrary.simpleMessage("Recipient"),
        "labelText": MessageLookupByLibrary.simpleMessage("Plain Text"),
        "labelUrl": MessageLookupByLibrary.simpleMessage("URL"),
        "labelWifiName": MessageLookupByLibrary.simpleMessage("Network Name"),
        "labelWifiPassword": MessageLookupByLibrary.simpleMessage("Password"),
        "labelZhuTi": MessageLookupByLibrary.simpleMessage("Theme"),
        "lookPhoto": MessageLookupByLibrary.simpleMessage("Preview Image"),
        "me": MessageLookupByLibrary.simpleMessage("My"),
        "noData": MessageLookupByLibrary.simpleMessage("No history record"),
        "pickAcolor": MessageLookupByLibrary.simpleMessage("Pick a color"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "qrTitle": MessageLookupByLibrary.simpleMessage(
            "Plain text, business card, email, mobile number, website, Wi-Fi, SMS, application"),
        "qrcode": MessageLookupByLibrary.simpleMessage("QR code"),
        "saveFail": MessageLookupByLibrary.simpleMessage("Save failed"),
        "saveSuccess":
            MessageLookupByLibrary.simpleMessage("Saved successfully"),
        "scanTitle": MessageLookupByLibrary.simpleMessage("Scan"),
        "setting": MessageLookupByLibrary.simpleMessage("setting"),
        "shareApp": MessageLookupByLibrary.simpleMessage("Share App"),
        "submits": MessageLookupByLibrary.simpleMessage("OK"),
        "userAgreement": MessageLookupByLibrary.simpleMessage("User Agreement"),
        "userAgreementTip": MessageLookupByLibrary.simpleMessage(
            "\"QR code and barcode production\" ,When we provide services to you, we may need to collect and use your account-related information and call account services, store, and read mobile phone status and identity , and a little network information and network service authority, we promise that your personal information will only be used for the purpose we stated. Clicking \"Agree\" means that you agree to the above content."),
        "version": MessageLookupByLibrary.simpleMessage("version"),
        "wfIntroduction": MessageLookupByLibrary.simpleMessage("Introduction")
      };
}
