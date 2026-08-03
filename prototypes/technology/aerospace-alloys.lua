local khaoslib_technology = require("__khaoslib__.prototypes.technology")

local tech = khaoslib_technology:load {
  type = "technology",
  name = "aerospace-alloys",
  order = "b-b",
} :set_icons {{icon = "__khaosaluminium__/graphics/technology/aerospace-alloys.png", icon_size = 256}}
  :set_prerequisites {"basic-alloys", "chemical-science-pack"}
  :set_unit {
    time = 30,
    count = 60,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
    },
  }
  :add_unlock_recipe("aluminium-2219")

if mods["khaostitanium"] then
  tech:add_prerequisite("titanium-processing")
end

if mods["khaoszirconium"] then
  tech:add_prerequisite("zirconium-processing")
end

tech:commit()
