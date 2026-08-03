local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "spark-plug",
  subgroup = "intermediate-product",
  order = "c[advanced-intermediates]-a2[spark-plug]",
  stack_size = 100,
} :set_icons {{icon = "__khaosaluminium__/graphics/icons/spark-plug.png", icon_size = 64}}
  :commit()
