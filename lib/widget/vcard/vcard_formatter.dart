
import 'package:intl/intl.dart';

import 'v_card.dart';

class VCardFormatter {
  int majorVersion = 3;

  /// Encode string
  /// @param  {String}     value to encode
  /// @return {String}     encoded string
  String e(String? value) {
    if ((value != null) && (value.isNotEmpty)) {
      // if (value is String) {
      //   value = '' + value;
      // }
      return value
          .replaceAll(RegExp(r'/\n/g'), '\\n')
          .replaceAll(RegExp(r'/,/g'), '\\,')
          .replaceAll(RegExp(r'/;/g'), '\\;');
    }
    return '';
  }

  /// Return new line characters
  /// @return {String} new line characters
  String nl() {
    return '\r\n';
  }

  /// Get formatted photo
  /// @param  {String} photoType       Photo type (PHOTO, LOGO)
  /// @param  {String} url             URL to attach photo from
  /// @param  {String} mediaType       Media-type of photo (JPEG, PNG, GIF)
  /// @param  {String} isBase64        Whether or not is Base64 format
  /// @return {String}                 Formatted photo
  String getFormattedPhoto(String photoType, String url, String mediaType, bool isBase64) {
    String params;

    if (majorVersion >= 4) {
      params = isBase64 ? ';ENCODING=b;MEDIATYPE=image/' : ';MEDIATYPE=image/';
    } else if (majorVersion == 3) {
      params = isBase64 ? ';ENCODING=b;TYPE=' : ';TYPE=';
    } else {
      params = isBase64 ? ';ENCODING=BASE64;' : ';';
    }

    String formattedPhoto =
        photoType + params + mediaType + ':' + e(url) + nl();
    return formattedPhoto;
  }

  /// Get formatted address
  /// @param  {Map<String, String>}         address
  /// @param  {String}         type address type
  /// @param {String}         Encoding prefix encodingPrefix
  /// @return {String}         Formatted address
  String getFormattedAddress(
      {required MailingAddress address, required String encodingPrefix}) {
    var formattedAddress = '';

    if (address.label.isNotEmpty ||
        address.street.isNotEmpty ||
        address.city.isNotEmpty ||
        address.stateProvince.isNotEmpty ||
        address.postalCode.isNotEmpty ||
        address.countryRegion.isNotEmpty) {
      if (majorVersion >= 4) {
        formattedAddress = 'ADR' +
            encodingPrefix +
            ';TYPE=' +
            address.type +
            (address.label.isNotEmpty
                ? ';LABEL="' + e(address.label) + '"'
                : '') +
            ':;;' +
            e(address.street) +
            ';' +
            e(address.city) +
            ';' +
            e(address.stateProvince) +
            ';' +
            e(address.postalCode) +
            ';' +
            e(address.countryRegion) +
            nl();
      } else {
        if (address.label.isNotEmpty) {
          formattedAddress = 'LABEL' +
              encodingPrefix +
              ';TYPE=' +
              address.type +
              ':' +
              e(address.label) +
              nl();
        }
        formattedAddress += 'ADR' +
            encodingPrefix +
            ';TYPE=' +
            address.type +
            ':;;' +
            e(address.street) +
            ';' +
            e(address.city) +
            ';' +
            e(address.stateProvince) +
            ';' +
            e(address.postalCode) +
            ';' +
            e(address.countryRegion) +
            nl();
      }
    }

    return formattedAddress;
  }

  /// Convert date to YYYYMMDD format
  /// @param  {Date}       date to encode
  /// @return {String}     encoded date
  String formatVCardDate(DateTime date) {
    return DateFormat('yyyyMMdd').format(date);
  }

  String getFormattedString(VCard vCard) {
    majorVersion = vCard.getMajorVersion();

    String formattedVCardString = '';
    formattedVCardString += 'BEGIN:VCARD' + nl();
    formattedVCardString += 'VERSION:' + vCard.version + nl();

    String encodingPrefix = majorVersion >= 4 ? '' : ';CHARSET=UTF-8';
    String formattedName = vCard.formattedName??'';

    [vCard.firstName, vCard.middleName, vCard.lastName].forEach((name) {
      if ((name.isNotEmpty) && (formattedName.isNotEmpty)) {
        formattedName += ' ';
      }
      formattedName += name;
    });


    formattedVCardString +=
        'FN' + encodingPrefix + ':' + e(formattedName) + nl();
    formattedVCardString += 'N' +
        encodingPrefix +
        ':' +
        e(vCard.lastName) +
        ';' +
        e(vCard.firstName) +
        ';' +
        e(vCard.middleName) +
        ';' +
        e(vCard.namePrefix) +
        ';' +
        e(vCard.nameSuffix) +
        nl();

    if ((vCard.nickname.isNotEmpty) && (majorVersion >= 3)) {
      formattedVCardString +=
          'NICKNAME' + encodingPrefix + ':' + e(vCard.nickname) + nl();
    }

    if (vCard.gender != null) {
      formattedVCardString += 'GENDER:' + e(vCard.gender??'') + nl();
    }

    if (vCard.uid != null) {
      formattedVCardString +=
          'UID' + encodingPrefix + ':' + e(vCard.uid??'') + nl();
    }

    if (vCard.birthday != null) {
      formattedVCardString += 'BDAY:' + formatVCardDate(vCard.birthday!) + nl();
    }

    if ((vCard.anniversary != null) && (majorVersion >= 4)) {
      formattedVCardString +=
          'ANNIVERSARY:' + formatVCardDate(vCard.anniversary!) + nl();
    }

    if (vCard.email != null) {
      if (vCard.email is! List) {
        vCard.email = [vCard.email];
      }
      vCard.email.forEach((address) {
        if (majorVersion >= 4) {
          formattedVCardString +=
              'EMAIL' + encodingPrefix + ';type=HOME:' + e(address) + nl();
        } else if (majorVersion >= 3 && majorVersion < 4) {
          formattedVCardString += 'EMAIL' +
              encodingPrefix +
              ';type=HOME,INTERNET:' +
              e(address) +
              nl();
        } else {
          formattedVCardString +=
              'EMAIL' + encodingPrefix + ';HOME;INTERNET:' + e(address) + nl();
        }
      });
    }

    if (vCard.workEmail != null) {
      if (vCard.workEmail is! List) {
        vCard.workEmail = [vCard.workEmail];
      }
      vCard.workEmail.forEach((address) {
        if (majorVersion >= 4) {
          formattedVCardString +=
              'EMAIL' + encodingPrefix + ';type=WORK:' + e(address) + nl();
        } else if (majorVersion >= 3 && majorVersion < 4) {
          formattedVCardString += 'EMAIL' +
              encodingPrefix +
              ';type=WORK,INTERNET:' +
              e(address) +
              nl();
        } else {
          formattedVCardString +=
              'EMAIL' + encodingPrefix + ';WORK;INTERNET:' + e(address) + nl();
        }
      });
    }

    if (vCard.otherEmail != null) {
      if (vCard.otherEmail is! List) {
        vCard.otherEmail = [vCard.otherEmail];
      }
      vCard.otherEmail.forEach((address) {
        if (majorVersion >= 4) {
          formattedVCardString +=
              'EMAIL' + encodingPrefix + ';type=OTHER:' + e(address) + nl();
        } else if (majorVersion >= 3 && majorVersion < 4) {
          formattedVCardString += 'EMAIL' +
              encodingPrefix +
              ';type=OTHER,INTERNET:' +
              e(address) +
              nl();
        } else {
          formattedVCardString +=
              'EMAIL' + encodingPrefix + ';OTHER;INTERNET:' + e(address) + nl();
        }
      });
    }

    if (vCard.logo.url != null) {
      formattedVCardString += getFormattedPhoto(
          'LOGO', vCard.logo.url??'', vCard.logo.mediaType??'', vCard.logo.isBase64??false);
    }

    if (vCard.photo.url != null) {
      formattedVCardString += getFormattedPhoto('PHOTO', vCard.photo.url??'',
          vCard.photo.mediaType??'', vCard.photo.isBase64??false);
    }

    if (vCard.cellPhone != null) {
      if (vCard.cellPhone is! List) {
        vCard.cellPhone = [vCard.cellPhone];
      }

      vCard.cellPhone.forEach((number) {
        if (majorVersion >= 4) {
          formattedVCardString +=
              'TEL;VALUE=uri;TYPE="voice,cell":tel:' + e(number) + nl();
        } else {
          formattedVCardString += 'TEL;TYPE=CELL:' + e(number) + nl();
        }
      });
    }

    if (vCard.pagerPhone != null) {
      if (!vCard.pagerPhone is! List) {
        vCard.pagerPhone = [vCard.pagerPhone];
      }
      vCard.pagerPhone.forEach((number) {
        if (majorVersion >= 4) {
          formattedVCardString +=
              'TEL;VALUE=uri;TYPE="pager,cell":tel:' + e(number) + nl();
        } else {
          formattedVCardString += 'TEL;TYPE=PAGER:' + e(number) + nl();
        }
      });
    }

    if (vCard.homePhone != null) {
      if (vCard.homePhone is! List) {
        vCard.homePhone = [vCard.homePhone];
      }
      vCard.homePhone.forEach((number) {
        if (majorVersion >= 4) {
          formattedVCardString +=
              'TEL;VALUE=uri;TYPE="voice,home":tel:' + e(number) + nl();
        } else {
          formattedVCardString += 'TEL;TYPE=HOME,VOICE:' + e(number) + nl();
        }
      });
    }

    if (vCard.workPhone != null) {
      if (vCard.workPhone is! List) {
        vCard.workPhone = [vCard.workPhone];
      }
      vCard.workPhone.forEach((number) {
        if (majorVersion >= 4) {
          formattedVCardString +=
              'TEL;VALUE=uri;TYPE="voice,work":tel:' + e(number) + nl();
        } else {
          formattedVCardString += 'TEL;TYPE=WORK,VOICE:' + e(number) + nl();
        }
      });
    }

    if (vCard.homeFax != null) {
      if (vCard.homeFax is! List) {
        vCard.homeFax = [vCard.homeFax];
      }
      vCard.homeFax.forEach((number) {
        if (majorVersion >= 4) {
          formattedVCardString +=
              'TEL;VALUE=uri;TYPE="fax,home":tel:' + e(number) + nl();
        } else {
          formattedVCardString += 'TEL;TYPE=HOME,FAX:' + e(number) + nl();
        }
      });
    }

    if (vCard.workFax != null) {
      if (vCard.workFax is! List) {
        vCard.workFax = [vCard.workFax];
      }
      vCard.workFax.forEach((number) {
        if (majorVersion >= 4) {
          formattedVCardString +=
              'TEL;VALUE=uri;TYPE="fax,work":tel:' + e(number) + nl();
        } else {
          formattedVCardString += 'TEL;TYPE=WORK,FAX:' + e(number) + nl();
        }
      });
    }

    if (vCard.otherPhone != null) {
      if (vCard.otherPhone is! List) {
        vCard.otherPhone = [vCard.otherPhone];
      }
      vCard.otherPhone.forEach((number) {
        if (majorVersion >= 4) {
          formattedVCardString +=
              'TEL;VALUE=uri;TYPE="voice,other":tel:' + e(number) + nl();
        } else {
          formattedVCardString += 'TEL;TYPE=OTHER:' + e(number) + nl();
        }
      });
    }

    // Format Addresses
    formattedVCardString += getFormattedAddress(
        address: vCard.homeAddress, encodingPrefix: encodingPrefix);
    formattedVCardString += getFormattedAddress(
        address: vCard.workAddress, encodingPrefix: encodingPrefix);

    if (vCard.jobTitle != null) {
      formattedVCardString +=
          'TITLE' + encodingPrefix + ':' + e(vCard.jobTitle??'') + nl();
    }

    if (vCard.role != null) {
      formattedVCardString +=
          'ROLE' + encodingPrefix + ':' + e(vCard.role??'') + nl();
    }

    if (vCard.organization != null) {
      formattedVCardString +=
          'ORG' + encodingPrefix + ':' + e(vCard.organization??'') + nl();
    }

    if (vCard.url != null) {
      formattedVCardString +=
          'URL' + encodingPrefix + ':' + e(vCard.url??'') + nl();
    }

    if (vCard.workUrl != null) {
      formattedVCardString +=
          'URL;type=WORK' + encodingPrefix + ':' + e(vCard.workUrl??'') + nl();
    }

    if (vCard.note != null) {
      formattedVCardString +=
          'NOTE' + encodingPrefix + ':' + e(vCard.note??'') + nl();
    }

    if (vCard.socialUrls.isNotEmpty) {
      vCard.socialUrls.forEach((key, value) {
        if  (value.isNotEmpty) {
          formattedVCardString += 'X-SOCIALPROFILE' +
              encodingPrefix +
              ';TYPE=' +
              key +
              ':' +
              e(vCard.socialUrls[key]) +
              nl();
        }
      });
    }

    if (vCard.source != null) {
      formattedVCardString +=
          'SOURCE' + encodingPrefix + ':' + e(vCard.source??'') + nl();
    }

    formattedVCardString += 'REV:' + DateTime.now().toIso8601String() + nl();

    if (vCard.isOrganization) {
      formattedVCardString += 'X-ABShowAs:COMPANY' + nl();
    }

    formattedVCardString += 'END:VCARD' + nl();
    return formattedVCardString;
  }
}