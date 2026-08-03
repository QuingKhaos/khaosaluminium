local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "aluminium-plate",
  subgroup = "raw-material",
  order = "a[smelting]-da[aluminium-plate]",
  enabled = true,
  auto_recycle = false,
  allow_productivity = true,
  energy_required = 3.2,
  main_product = "aluminium-plate",
} :set_categories {"smelting"}
  :set_icons{{icon = "__khaosaluminium__/graphics/icons/aluminium-plate.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "aluminium-oxide", amount = 1},
  }
  :set_results {
    {type = "item", name = "aluminium-plate", amount = 1},
  }
  :commit()
