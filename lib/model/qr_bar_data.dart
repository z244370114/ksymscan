class QrBarData {
  int? iconUrl;
  String? imgUrl;
  String? title;
  int? index;
  String? enumType;
  String? barcodeType;
  String? content;
  List<String>? contents;

  QrBarData({
    this.iconUrl,
    this.imgUrl,
    this.title,
    this.index,
    this.enumType = '',
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
      contents = [];
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
