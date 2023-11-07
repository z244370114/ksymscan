import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:umeng_common_sdk/umeng_common_sdk.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;

import '../common/constants.dart';
import '../generated/l10n.dart';
import '../plugin/method_plugin.dart';
import 'PlatformUtils.dart';

class PubMethodUtils {
  static void umengCommonSdkInit() async {
    var appInfo = await MethodPlugin.appInfo;
    UmengCommonSdk.initCommon('64e6d9658efadc41dccaaf26',
        '64e6d9658efadc41dccaaf26', appInfo.channelId.toString());
  }

  static String jiexiContent(int type, String contents) {
    var content = "";
    return content;
  }

  static Future<Map> saveWidgetAsImage() async {
    RenderRepaintBoundary boundary =
        boundaryKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    ui.Image image =
        await boundary.toImage(pixelRatio: ui.window.devicePixelRatio);
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    if (byteData != null) {
      final bytes = byteData.buffer.asUint8List();
      var fileName = "${DateTime.now().millisecondsSinceEpoch}.png";
      final Directory tempDir = await getTemporaryDirectory();
      String appDocPath = tempDir.path;
      File file = File('$appDocPath/$fileName');
      final newFile = await file.writeAsBytes(bytes);
      if (PlatformUtils.isAndroidOrIOS) {
        final result = await ImageGallerySaver.saveFile(newFile.path);
        return result;
      }
    }
    return {
      "isSuccess": false,
    };
  }

  static Future<Uint8List> getImageUint8List() async {
    RenderRepaintBoundary boundary =
        boundaryKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    ui.Image image =
        await boundary.toImage(pixelRatio: ui.window.devicePixelRatio);
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    final bytes = byteData!.buffer.asUint8List();
    return bytes;
  }

  static void copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text("${S.of(context).copySuccess}"),
          duration: Duration(milliseconds: 500)),
    );
  }

  static void scanPath(Barcode barcode) {
    var parse = Uri.parse(barcode.code.toString());
    launchUrl(parse);
    // if (content.contains("tel")) {
    //   emailLaunchUri = Uri(
    //     scheme: 'tel',
    //     path: content.substring(4, content.length),
    //   );
    // } else if (content.contains("sms")) {
    //   emailLaunchUri = Uri(
    //       scheme: 'sms',
    //       path: content.substring(4, 15),
    //       queryParameters: <String, String>{
    //         'body': Uri.encodeComponent(content.substring(16, content.length)),
    //       });
    // } else if (content.contains("mailto")) {
    //   emailLaunchUri = Uri(
    //     scheme: 'mailto',
    //     path: 'smith@example.com',
    //     query: encodeQueryParameters(<String, String>{
    //       'subject': 'Example Subject & Symbols are allowed!',
    //     }),
    //   );
    // }
    // launchUrl(emailLaunchUri);
  }

  static String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }



  static void getInAppReview() async {
    final InAppReview inAppReview = InAppReview.instance;
    if (await inAppReview.isAvailable()) {
      inAppReview.requestReview();
    }
  }
}
