
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "aluminium-6061",
  subgroup = "intermediate-product",
  order = "c[advanced-intermediates]-a0[aluminium-6061]",
  stack_size = 100,
} :set_icons {{icon = "__khaosaluminium__/graphics/icons/aluminium-6061.png", icon_size = 64}}
  :commit()
