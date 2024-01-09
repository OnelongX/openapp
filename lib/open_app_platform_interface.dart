import 'dart:ffi';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'open_app_method_channel.dart';

abstract class OpenAppPlatform extends PlatformInterface {
  /// Constructs a OpenAppPlatform.
  OpenAppPlatform() : super(token: _token);

  static final Object _token = Object();

  static OpenAppPlatform _instance = MethodChannelOpenApp();

  /// The default instance of [OpenAppPlatform] to use.
  ///
  /// Defaults to [MethodChannelOpenApp].
  static OpenAppPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OpenAppPlatform] when
  /// they register themselves.
  static set instance(OpenAppPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<Void?> openWithPackageName(packageName){
    throw UnimplementedError('openWithPackageName() has not been implemented.');
  }
}
