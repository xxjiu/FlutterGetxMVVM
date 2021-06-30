import 'package:flutterdemo/config/config.dart';

class AddressManager {
  AddressManager._();

  // static final String BASE_URL = Config.isDebug
  //     ? "http://192.168.3.42:8100/api$sThirdDomain"
  //     : "https://test.calfkaka.com/api/parents$sThirdDomain";

  static final String BASE_URL = Config.isDebug
      ? "https://test.calfkaka.com/api/parents/"
      : "https://test.calfkaka.com/api/parents/";

  static final String SOCKET_URL = Config.isDebug
      ? "ws://www.calfkaka.com/ws/baby/uselimit"
      : "ws://www.calfkaka.com/ws/baby/uselimit";

  /// 登录
  static String login = "v1/login";
}
