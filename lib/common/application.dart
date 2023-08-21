import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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
}
