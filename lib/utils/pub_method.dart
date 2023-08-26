import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:ksymscan/model/app_info_data.dart';
import 'package:path_provider/path_provider.dart';
import 'package:umeng_common_sdk/umeng_common_sdk.dart';
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
}
