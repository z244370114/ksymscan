import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorState = GlobalKey();

class Constant {
  /// debug开关，上线需要关闭
  /// App运行在Release环境时，inProduction为true；当App运行在Debug和Profile环境时，inProduction为false
  static const bool inProduction = bool.fromEnvironment('dart.vm.product');

  static const String accessToken = 'Authorization';

  static const String theme = 'AppTheme';
}

class CKey {
  ///首页第一次进入获取权限 标记
  static const String requestPermission = "requestPermission";
  static const String host = "host";
  static const String proxyIp = "proxyIp";
  static const String sourceUrl = "sourceUrl";
  static const String applicationUrl = "applicationUrl";


  ///是否第一次安装启动
  static const String runOne = "runOne";

  ///登录token
  static const String loginToken = "loginToken";

  ///登录状态
  static const String loginState = "loginState";

  ///引导图状态
  static const String userGuideState = "userGuideState";

}
