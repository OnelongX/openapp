
import 'dart:ffi';

import 'open_app_platform_interface.dart';

class OpenApp {
  Future<String?> getPlatformVersion() {
    return OpenAppPlatform.instance.getPlatformVersion();
  }

  Future<Void?> openWithPackageName(String packageName) {
    return OpenAppPlatform.instance.openWithPackageName(packageName);
  }
}
