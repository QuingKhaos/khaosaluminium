local khaoslib_item = require("__khaoslib__.prototypes.item")

if mods["khaostitanium"] then
  khaoslib_item:load {
    type = "item",
    name = "ti-sapphire",
    subgroup = "intermediate-product",
    order = "c[advanced-intermediates]-a2[ti-sapphire]",
    stack_size = 50,
  } :set_icons {{icon = "__khaosaluminium__/graphics/icons/ti-sapphire.png", icon_size = 64}}
    :commit()
end
