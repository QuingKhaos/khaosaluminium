local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

local recipe = khaoslib_recipe:load {
  type = "recipe",
  name = "aluminium-6061",
  subgroup = "intermediate-product",
  order = "c[advanced-intermediates]-a0[aluminium-6061]",
  enabled = false,
  auto_recycle = false,
  allow_productivity = true,
  energy_required = 100,
  main_product = "aluminium-6061",
} :set_categories {"founding"}
  :set_icons{{icon = "__khaosaluminium__/graphics/icons/aluminium-6061.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "aluminium-plate", amount = 18},
    {type = "item", name = "copper-plate", amount = 1},
    {type = "item", name = "iron-plate", amount = 1},
  }
  :set_results {
    {type = "item", name = "aluminium-6061", amount = 20},
  }

if mods["khaossilicon"] then
  recipe:add_ingredient {type = "item", name = "silicon", amount = 1}
    :replace_ingredient("aluminium-plate", function(ingredient) ingredient.amount = ingredient.amount - 1 return ingredient end)
end

recipe:commit()
