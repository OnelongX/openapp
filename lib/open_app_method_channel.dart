import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'open_app_platform_interface.dart';

/// An implementation of [OpenAppPlatform] that uses method channels.
class MethodChannelOpenApp extends OpenAppPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('open_app');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<Void?> openWithPackageName(packageName) async {
    final version = await methodChannel.invokeMethod<Void>('openWithPackageName', packageName);
    return version;
  }
}
