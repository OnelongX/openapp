#include "include/open_app/open_app_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "open_app_plugin.h"

void OpenAppPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  open_app::OpenAppPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
