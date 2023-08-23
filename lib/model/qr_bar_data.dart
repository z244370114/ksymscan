import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ksymscan/common/constants.dart';

class QrBarData {
  IconData? iconUrl;
  String? imgUrl;
  String? title;
  int? index;
  QrTypeEnum? enumType;
  BarcodeType? barcodeType;
  String? content;
  List<String>? contents;

  QrBarData({
    this.iconUrl,
    this.imgUrl,
    this.title,
    this.index,
    this.enumType,
    this.content,
    this.contents,
  });

  QrBarData.fromJson(Map<String, dynamic> json) {
    iconUrl = json['iconUrl'];
    imgUrl = json['imgUrl'];
    title = json['title'];
    index = json['index'];
    enumType = json['enumType'];
    content = json['content'];
    if (json['contents'] != null) {
      json['contents'].forEach((v) {
        contents!.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['iconUrl'] = iconUrl;
    data['imgUrl'] = imgUrl;
    data['title'] = title;
    data['index'] = index;
    data['enumType'] = enumType;
    data['content'] = content;
    data['contents'] = contents!.map((v) => v).toList();
    return data;
  }
}
