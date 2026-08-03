local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "aluminium-cable",
  subgroup = "cable",
  order = "a[basic-intermediates]-ba[aluminium-cable]",
  stack_size = 100,
} :set_icons {{icon = "__khaosaluminium__/graphics/icons/aluminium-cable.png", icon_size = 64}}
  :commit()
