local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "acsr-cable",
  subgroup = "cable",
  order = "a[basic-intermediates]-bb[acsr-cable]",
  enabled = false,
  allow_productivity = true,
  energy_required = 0.5,
  main_product = "acsr-cable",
} :set_categories {"crafting"}
  :set_icons{{icon = "__khaosaluminium__/graphics/icons/acsr-cable.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "aluminium-cable", amount = 6},
    {type = "item", name = "steel-plate", amount = 1},
  }
  :set_results {
    {type = "item", name = "acsr-cable", amount = 3},
  }
  :commit()
