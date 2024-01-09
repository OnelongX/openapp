//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <open_app/open_app_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) open_app_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "OpenAppPlugin");
  open_app_plugin_register_with_registrar(open_app_registrar);
}
