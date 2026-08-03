local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_technology:load {
  type = "technology",
  name = "reinforced-cable",
  order = "b-b",
} :set_icons {{icon = "__khaosaluminium__/graphics/technology/reinforced-cable.png", icon_size = 256}}
  :set_prerequisites {"steel-processing", "logistic-science-pack"}
  :set_unit {
    time = 15,
    count = 60,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
    },
  }
  :add_unlock_recipe("acsr-cable")
  :commit()

khaoslib_technology:load("electric-energy-distribution-1"):add_prerequisite("reinforced-cable"):commit()
