import 'package:flutter/services.dart';

import '../model/app_info_data.dart';

class MethodPlugin {
  static const MethodChannel _channel = MethodChannel('flutter_app/plugin');

  static void share() {
    _channel.invokeMethod('share');
  }

  static void googlePlay() {
    _channel.invokeMethod('googlePlay');
  }

  static Future<bool> isGoogleChannel() async {
    var appInfos = await appInfo;
    return appInfos.channelId == "google";
  }

  /// 获取app信息
  static Future<AppInfo> get appInfo async {
    var result = await _channel.invokeMethod('getAppInfo');
    return AppInfo(
        versionName: result['versionName'],
        versionCode: result['versionCode'],
        packageName: result['packageName'],
        channelId: result['channelId']);
  }

  ///
  /// 获取android手机上安装的应用商店
  ///
// static getInstallMarket({List<String>? marketPackageNames}) async {
//   List<String> packageNameList = AppMarket.buildInPackageNameList;
//   if (marketPackageNames != null && marketPackageNames.length > 0) {
//     packageNameList.addAll(marketPackageNames);
//   }
//   var map = {'packages': packageNameList};
//   var result = await _channel.invokeMethod('getInstallMarket', map);
//   List<String> resultList = (result as List).map((f) {
//     return '$f';
//   }).toList();
//   return resultList;
// }

  ///
  /// 跳转到应用商店
  ///
// static toMarket({AppMarketInfo? appMarketInfo}) async {
//   var map = {
//     'marketPackageName':
//     appMarketInfo != null ? appMarketInfo.packageName : '',
//     'marketClassName': appMarketInfo != null ? appMarketInfo.className : ''
//   };
//   return await _channel.invokeMethod('toMarket', map);
// }
}
