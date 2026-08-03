local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

local recipe = khaoslib_recipe:load {
  type = "recipe",
  name = "spark-plug",
  subgroup = "intermediate-product",
  order = "c[advanced-intermediates]-a1[spark-plug]",
  enabled = false,
  allow_productivity = true,
  energy_required = 2,
  main_product = "spark-plug",
} :set_categories {"crafting"}
  :set_icons{{icon = "__khaosaluminium__/graphics/icons/spark-plug.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "aluminium-oxide", amount = 1},
    {type = "item", name = "copper-plate", amount = 1},
    {type = "item", name = "iron-plate", amount = 1},
  }

local tech = khaoslib_technology:load("engine")
  :add_unlock_recipe("spark-plug")

if mods["khaoszirconium"] then
  recipe:add_ingredient {type = "item", name = "zirconia", amount = 1}
  tech:add_prerequisite("zirconia-processing")
end

recipe:set_results {
  {type = "item", name = "spark-plug", amount = recipe:count_ingredients()},
} :commit()

tech:commit()
