local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "acsr-cable",
  subgroup = "cable",
  order = "a[basic-intermediates]-bb[acsr-cable]",
  stack_size = 50,
} :set_icons {{icon = "__khaosaluminium__/graphics/icons/acsr-cable.png", icon_size = 64}}
  :commit()
