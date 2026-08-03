local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["khaostitanium"] then
  local recipe = khaoslib_recipe:load {
    type = "recipe",
    name = "ti-sapphire",
    subgroup = "intermediate-product",
    order = "c[advanced-intermediates]-a2[ti-sapphire]",
    enabled = false,
    allow_productivity = true,
    energy_required = 10,
    main_product = "ti-sapphire",
  } :set_categories {"chemistry"}
    :set_icons{{icon = "__khaosaluminium__/graphics/icons/ti-sapphire.png", icon_size = 64}}
    :set_ingredients {
      {type = "item", name = "aluminium-oxide", amount = 10},
      {type = "item", name = "titanium-plate", amount = 1},
      {type = "fluid", name = "sulfuric-acid", amount = 5},
    }
    :set_results {
      {type = "item", name = "ti-sapphire", amount = 1},
    }

  if mods["khaoscarbon"] then
    recipe:add_ingredient {type = "item", name = "diamond", amount = 1, ignored_by_stats = 1}
      :add_result {type = "item", name = "diamond", amount = 1, independent_probability = 0.8, ignored_by_productivity = 1, ignored_by_stats = 1}
  end

  recipe:commit()

  khaoslib_technology:load("laser")
    :add_prerequisite("titanium-processing")
    :add_unlock_recipe("ti-sapphire")
    :commit()
end
