local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

local recipe = khaoslib_recipe:load {
  type = "recipe",
  name = "aluminium-oxide",
  subgroup = "raw-material",
  order = "a[smelting]-da[aluminium-oxide]",
  enabled = true,
  auto_recycle = false,
  allow_productivity = true,
  energy_required = 3.2,
  main_product = "aluminium-oxide",
} :set_categories {"smelting"}
  :set_icons{{icon = "__khaosaluminium__/graphics/icons/aluminium-oxide.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "aluminium-ore", amount = 1},
  }
  :set_results {
    {type = "item", name = "aluminium-oxide", amount = 1},
  }

if mods["khaossilicon"] and settings.startup["khaosaluminium-byproduct"].value then
  recipe:replace_result("aluminium-oxide", function (result) result.independent_probability = 0.95 return result end)
    :add_result {type = "item", name = "silica", amount = 1, independent_probability = 0.05}
end

recipe:commit()
