local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

local recipe = khaoslib_recipe:load {
  type = "recipe",
  name = "aluminium-2219",
  subgroup = "intermediate-product",
  order = "c[advanced-intermediates]-a1[aluminium-2219]",
  enabled = false,
  auto_recycle = false,
  allow_productivity = true,
  energy_required = 100,
  main_product = "aluminium-2219",
} :set_categories {"founding"}
  :set_icons{{icon = "__khaosaluminium__/graphics/icons/aluminium-2219.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "aluminium-plate", amount = 16},
    {type = "item", name = "copper-plate", amount = 4},
  }
  :set_results {
    {type = "item", name = "aluminium-2219", amount = 20},
  }

if mods["khaostitanium"] then
  recipe:add_ingredient {type = "item", name = "titanium-plate", amount = 2}
    :replace_ingredient("aluminium-plate", function(ingredient) ingredient.amount = ingredient.amount - 1 return ingredient end)
    :replace_ingredient("copper-plate", function(ingredient) ingredient.amount = ingredient.amount - 1 return ingredient end)
end

if mods["khaoszirconium"] then
  recipe:add_ingredient {type = "item", name = "zirconium-plate", amount = 1}
    :replace_ingredient("aluminium-plate", function(ingredient) ingredient.amount = ingredient.amount - 1 return ingredient end)
end

recipe:commit()
