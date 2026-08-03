local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_technology:load {
  type = "technology",
  name = "copper-processing",
  order = "b-b",
  ignore_tech_cost_multiplier = true,
} :set_icons {{icon = "__base__/graphics/icons/copper-plate.png", icon_size = 64}}
  :set_prerequisites {"automation"}
  :set_unit {
    time = 15,
    count = 10,
    ingredients = {
      {"automation-science-pack", 1},
    },
  }
  :add_unlock_recipe("copper-plate")
  :add_unlock_recipe("copper-cable")
  :commit()

khaoslib_recipe:load("copper-plate"):set {enabled = false} :commit()
khaoslib_recipe:load("copper-cable"):set {enabled = false} :remove_unlock("electronics"):commit()
