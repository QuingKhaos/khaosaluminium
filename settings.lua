local khaoslib_setting = require("__khaoslib__.settings.setting")

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaosaluminium-byproduct",
  setting_type = "startup",
  default_value = true,
} :commit()
