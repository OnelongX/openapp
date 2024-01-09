#ifndef FLUTTER_PLUGIN_OPEN_APP_PLUGIN_H_
#define FLUTTER_PLUGIN_OPEN_APP_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace open_app {

class OpenAppPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  OpenAppPlugin();

  virtual ~OpenAppPlugin();

  // Disallow copy and assign.
  OpenAppPlugin(const OpenAppPlugin&) = delete;
  OpenAppPlugin& operator=(const OpenAppPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace open_app

#endif  // FLUTTER_PLUGIN_OPEN_APP_PLUGIN_H_
