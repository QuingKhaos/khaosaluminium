local khaoslib_technology = require("__khaoslib__.prototypes.technology")

local tech = khaoslib_technology:load {
  type = "technology",
  name = "basic-alloys",
  order = "b-b",
} :set_icons {{icon = "__khaosaluminium__/graphics/technology/basic-alloys.png", icon_size = 256}}
  :set_prerequisites {"advanced-material-processing"}
  :set_unit {
    time = 30,
    count = 60,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
    },
  }
  :add_unlock_recipe("aluminium-6061")

if mods["khaossilicon"] then
  tech:add_prerequisite("silicon-processing")
end

tech:commit()
