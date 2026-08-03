local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "aluminium-plate",
  subgroup = "raw-material",
  order = "a[smelting]-da[aluminium-plate]",
  stack_size = 100,
} :set_icons {{icon = "__khaosaluminium__/graphics/icons/aluminium-plate.png", icon_size = 64}}
  :commit()
