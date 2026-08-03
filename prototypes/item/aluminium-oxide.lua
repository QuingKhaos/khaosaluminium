local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "aluminium-oxide",
  subgroup = "raw-material",
  order = "a[smelting]-da[aluminium-oxide]",
  stack_size = 100,

  pictures = {
    {filename = "__khaosaluminium__/graphics/icons/aluminium-oxide.png", size = 64, scale = 0.5},
    {filename = "__khaosaluminium__/graphics/icons/aluminium-oxide-1.png", size = 64, scale = 0.5},
    {filename = "__khaosaluminium__/graphics/icons/aluminium-oxide-2.png", size = 64, scale = 0.5},
    {filename = "__khaosaluminium__/graphics/icons/aluminium-oxide-3.png", size = 64, scale = 0.5},
  },
} :set_icons {{icon = "__khaosaluminium__/graphics/icons/aluminium-oxide.png", icon_size = 64}}
  :commit()
