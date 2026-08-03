local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["khaossilicon"] and settings.startup["khaosaluminium-byproduct"].value then
  khaoslib_recipe.copy("landfill", "landfill-silica")
    :replace_ingredient("stone", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 10) return ingredient end)
    :add_ingredient {type = "item", name = "silica", amount = 20}
    :set_icons(util.combine_icons(khaoslib_item.get_icons("landfill"), khaoslib_item.get_icons("silica"), {scale = 0.5, shift = {8, -8}}, 64))
    :commit()

  khaoslib_technology:load("landfill")
    :remove_prerequisite("logistic-science-pack")
    :remove_science_pack("logistic-science-pack")
    :add_unlock_recipe("landfill-silica")
    :commit()
end
