local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "aluminium-cable",
  subgroup = "cable",
  order = "a[basic-intermediates]-ba[aluminium-cable]",
  enabled = true,
  allow_productivity = true,
  energy_required = 0.5,
  main_product = "aluminium-cable",
} :set_categories {"crafting"}
  :set_icons{{icon = "__khaosaluminium__/graphics/icons/aluminium-cable.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "aluminium-plate", amount = 2},
  }
  :set_results {
    {type = "item", name = "aluminium-cable", amount = 1},
  }
  :commit()
