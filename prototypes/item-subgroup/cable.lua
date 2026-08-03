local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_item_subgroup = require("__khaoslib__.prototypes.item-subgroup")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if not khaoslib_item_subgroup.exists("cable") then
  khaoslib_item_subgroup:load {
    type = "item-subgroup",
    name = "cable",
    group = "intermediate-products",
    order = "f",
  } :commit()

  khaoslib_item:load("copper-cable"):set {subgroup = "cable"} :commit()
  khaoslib_recipe:load("copper-cable"):set {subgroup = "cable"} :commit()
end
