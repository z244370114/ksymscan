import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../model/qr_bar_data.dart';
import '../utils/event_bus.dart';
import 'c_key.dart';

class Application {
  static late GetStorage getStorage;

  ///进入app就初始化，后期可以直接使用同步方法
  static Future initSp(storageKey) async {
    getStorage = GetStorage(storageKey);
  }

  ///判断是否登录
  static bool get isLogin {
    String? token = getStorage.read(CKey.loginToken);
    var loginState = getStorage.read(CKey.loginState);
    return GetUtils.isNull(token) && loginState;
  }

  static void addQrBarData(QrBarData qrBarData) {
    EventBus.getDefault().post(qrBarData);
    if (!getStorage.hasData(CKey.listQrBarData)) {
      getStorage.write(CKey.listQrBarData, [qrBarData]);
    } else {
      var listQrBarData = getQrBarDataList();
      listQrBarData.insert(0, qrBarData);
      getStorage.write(CKey.listQrBarData, listQrBarData);
    }
  }

  static List<dynamic> getQrBarDataList() {
    var read = getStorage.read(CKey.listQrBarData);
    return read ?? [];
  }
}
