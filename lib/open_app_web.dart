// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'open_app_platform_interface.dart';

/// A web implementation of the OpenAppPlatform of the OpenApp plugin.
class OpenAppWeb extends OpenAppPlatform {
  /// Constructs a OpenAppWeb
  OpenAppWeb();

  static void registerWith(Registrar registrar) {
    OpenAppPlatform.instance = OpenAppWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = html.window.navigator.userAgent;
    return version;
  }
}
