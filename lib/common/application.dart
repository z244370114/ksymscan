import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:xhxlib/utlis/google_mobile_util.dart';

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

  static void initGoogleAdKey() {
    GoogleMobileUtil.adKeyList["createInterstitialAd"] = Platform.isAndroid
        ? 'ca-app-pub-3940256099942544/1033173712'
        : 'ca-app-pub-3940256099942544/4411468910';
    GoogleMobileUtil.adKeyList["createRewardedAd"] = Platform.isAndroid
        ? 'ca-app-pub-3940256099942544/5224354917'
        : 'ca-app-pub-3940256099942544/1712485313';
    GoogleMobileUtil.adKeyList["createRewardedInterstitialAd"] =
        Platform.isAndroid
            ? 'ca-app-pub-3940256099942544/5354046379'
            : 'ca-app-pub-3940256099942544/6978759866';
    GoogleMobileUtil.adKeyList["createBannerAd"] = Platform.isAndroid
        ? 'ca-app-pub-3940256099942544/6300978111'
        : 'ca-app-pub-3940256099942544/2934735716';
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
