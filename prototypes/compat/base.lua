local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_recipe:load("offshore-pump"):replace_ingredient("electronic-circuit", function(ingredient) ingredient.name = "aluminium-cable" return ingredient end):commit()
khaoslib_recipe:load("lab"):replace_ingredient("electronic-circuit", function(ingredient) ingredient.name = "aluminium-cable" return ingredient end):commit()
khaoslib_recipe:load("electric-mining-drill"):replace_ingredient("electronic-circuit", function(ingredient) ingredient.name = "aluminium-cable" return ingredient end):commit()
khaoslib_recipe:load("assembling-machine-1"):replace_ingredient("electronic-circuit", function(ingredient) ingredient.name = "aluminium-cable" return ingredient end):commit()
khaoslib_recipe:load("radar"):replace_ingredient("electronic-circuit", function(ingredient) ingredient.name = "aluminium-cable" return ingredient end):commit()
khaoslib_recipe:load("splitter"):replace_ingredient("electronic-circuit", function(ingredient) ingredient.name = "aluminium-cable" return ingredient end):commit()

khaoslib_recipe:load("repair-pack")
  :remove_ingredient("electronic-circuit")
  :remove_ingredient("copper-cable")
  :add_ingredient {type = "item", name = "aluminium-cable", amount = 3}
  :add_ingredient {type = "item", name = "iron-gear-wheel", amount = 3}
  :commit()

khaoslib_technology:load("electronics")
  :add_prerequisite("copper-processing")
  :add_unlock_recipe("long-handed-inserter")
  :remove_unlock_recipe("small-electric-pole")
  :remove_unlock_recipe("lab")
  :commit()

khaoslib_technology:load("automation"):remove_unlock_recipe("long-handed-inserter"):commit()
khaoslib_technology:load("automation-science-pack"):remove_prerequisite("electronics"):commit()
khaoslib_technology:load("logistic-science-pack"):add_prerequisite("electronics"):commit()

khaoslib_technology:load("steam-power")
  :add_unlock_recipe("lab")
  :add_unlock_recipe("small-electric-pole")
  :commit()

khaoslib_technology:load("fast-inserter")
  :remove_prerequisite("automation-science-pack"):commit()
  :add_prerequisite("electronics")
  :commit()

khaoslib_technology:load("lamp")
  :remove_prerequisite("automation-science-pack"):commit()
  :add_prerequisite("electronics")
  :commit()

khaoslib_recipe:load("lab")
  :replace_ingredient("copper-plate", function(ingredient) ingredient.name = "aluminium-plate" return ingredient end)
  :replace_ingredient("aluminium-cable", function(ingredient) ingredient.amount = ingredient.amount + khaoslib_recipe.get_ingredient("lab", "aluminium-cable") --[[@cast -?]].amount return ingredient end)
  :remove_ingredient("copper-cable")
  :commit()

khaoslib_recipe:load("submachine-gun"):replace_ingredient("copper-plate", function(ingredient) ingredient.name = "aluminium-plate" return ingredient end):commit()
khaoslib_recipe:load("shotgun"):replace_ingredient("copper-plate", function(ingredient) ingredient.name = "aluminium-plate" return ingredient end):commit()
khaoslib_recipe:load("shotgun-shell"):replace_ingredient("copper-plate", function(ingredient) ingredient.name = "stone" return ingredient end):commit()
khaoslib_recipe:load("automation-science-pack"):replace_ingredient("copper-plate", function(ingredient) ingredient.name = "aluminium-plate" return ingredient end):commit()
khaoslib_recipe:load("small-electric-pole"):replace_ingredient("copper-cable", {type = "item", name = "aluminium-cable", amount = 1}):commit()

khaoslib_recipe:load("gun-turret")
  :replace_ingredient("copper-plate", function(ingredient) ingredient.name = "aluminium-plate" return ingredient end)
  :replace_ingredient("copper-cable", function(ingredient) ingredient.name = "aluminium-cable" return ingredient end)
  :commit()

khaoslib_technology:load("burner-foundry"):add_prerequisite("copper-processing"):commit()
khaoslib_technology:load("heavy-armor"):add_prerequisite("copper-processing"):commit()

if mods["khaostin"] and settings.startup["khaostin-more-intermediates"].value --[[@as string]]:match("bronze") ~= nil then
  khaoslib_recipe:load("bronze-plate")
    :replace_ingredient("copper-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 1) return ingredient end)
    :add_ingredient {type = "item", name = "aluminium-plate", amount = 1}
    :commit()
end

khaoslib_recipe:load("sulfur")
  :set {energy_required = (khaoslib_recipe.get("sulfur").energy_required --[[@as double]]) * 2}
  :replace_result("sulfur", function(result) result.amount = result.amount and result.amount * 2 or 0 return result end)
  :replace_ingredient("petroleum-gas", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 10) return ingredient end)
  :add_ingredient {type = "item", name = "aluminium-oxide", amount = 1}
  :commit()

khaoslib_recipe:load("burner-inserter"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "aluminium-plate" return ingredient end):commit()
khaoslib_recipe:load("inserter"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "aluminium-plate" return ingredient end):commit()
khaoslib_recipe:load("long-handed-inserter"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "aluminium-plate" return ingredient end):commit()
khaoslib_recipe:load("fast-inserter"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "aluminium-plate" return ingredient end):commit()
khaoslib_recipe:load("transport-belt"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "aluminium-plate" return ingredient end):commit()
khaoslib_recipe:load("underground-belt"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "aluminium-plate" return ingredient end):commit()
khaoslib_recipe:load("splitter"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "aluminium-plate" return ingredient end):commit()
khaoslib_recipe:load("rocket"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "aluminium-plate" return ingredient end):commit()

khaoslib_recipe:load("small-lamp"):replace_ingredient("copper-cable", {type = "item", name = "aluminium-cable", amount = 1}):commit()
khaoslib_recipe:load("radar"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "aluminium-plate" return ingredient end):commit()
khaoslib_recipe:load("steam-engine"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "aluminium-plate" return ingredient end):commit()
khaoslib_recipe:load("storage-tank"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "aluminium-plate" return ingredient end):commit()
khaoslib_recipe:load("engine-unit"):add_ingredient {type = "item", name = "spark-plug", amount = 1} :commit()
khaoslib_recipe:load("flamethrower"):add_ingredient {type = "item", name = "spark-plug", amount = 1} :commit()
khaoslib_recipe:load("flamethrower-turret"):add_ingredient {type = "item", name = "spark-plug", amount = 1} :commit()
khaoslib_recipe:load("tank"):add_ingredient {type = "item", name = "spark-plug", amount = 1} :commit()

khaoslib_recipe:load("artillery-shell")
  :replace_ingredient("explosives", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 4) return ingredient end)
  :add_ingredient {type = "item", name = "aluminium-2219", amount = 4}
  :commit()

if mods["khaostitanium"] then
  khaoslib_recipe:load("laser-turret")
    :remove_ingredient("diamond")
    :add_ingredient {type = "item", name = "ti-sapphire", amount = 1}
    :commit()
else
  khaoslib_recipe:load("laser-turret"):add_ingredient {type = "item", name = "aluminium-oxide", amount = 5} :commit()
end

khaoslib_recipe:load("flying-robot-frame"):replace_ingredient("steel-plate", {type = "item", name = "aluminium-2219", amount = 2}):commit()
khaoslib_technology:load("robotics"):add_prerequisite("aerospace-alloys"):commit()

khaoslib_recipe:load("distractor-capsule")
  :replace_ingredient("defender-capsule", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 1) return ingredient end)
  :add_ingredient {type = "item", name = "ti-sapphire", amount = 1}
  :commit()

khaoslib_recipe:load("light-armor")
  :replace_ingredient("iron-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 20) return ingredient end)
  :add_ingredient {type = "item", name = "aluminium-oxide", amount = 20}
  :commit()

khaoslib_recipe:load("heavy-armor")
  :replace_ingredient("copper-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 20) return ingredient end)
  :add_ingredient {type = "item", name = "aluminium-oxide", amount = 50}
  :commit()

khaoslib_recipe:load("tank")
  :replace_ingredient("steel-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 10) return ingredient end)
  :add_ingredient {type = "item", name = "aluminium-oxide", amount = 40}
  :commit()

khaoslib_recipe:load("rocket-silo")
  :replace_ingredient("concrete", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 500) return ingredient end)
  :add_ingredient {type = "item", name = "aluminium-oxide", amount = 500}
  :add_ingredient {type = "item", name = "aluminium-plate", amount = 500}
  :replace_ingredient("steel-plate", function(ingredient) ingredient.amount = 500 return ingredient end)
  :add_ingredient {type = "item", name = "spark-plug", amount = 100}
  :commit()

khaoslib_recipe:load("roboport"):add_ingredient {type = "item", name = "aluminium-6061", amount = 45} :commit()
khaoslib_recipe:load("assembling-machine-1"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "aluminium-plate" return ingredient end):commit()
khaoslib_recipe:load("centrifuge"):add_ingredient {type = "item", name = "aluminium-plate", amount = 50} :commit()

khaoslib_technology:load("low-density-structure"):add_prerequisite("aerospace-alloys"):commit()
khaoslib_recipe:load("low-density-structure")
  :remove_ingredient("copper-plate")
  :remove_ingredient("steel-plate")
  :remove_ingredient("titanium-plate")
  :add_ingredient {type = "item", name = "aluminium-2219", amount = mods["khaoszirconium"] and 10 or 20}
  :commit()

khaoslib_technology:load("automobilism"):add_prerequisite("basic-alloys"):commit()
khaoslib_recipe:load("car")
  :replace_ingredient("iron-plate", function(ingredient) ingredient.name = "aluminium-6061" return ingredient end)
  :replace_ingredient("steel-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 3) return ingredient end)
  :replace_ingredient("aluminium-6061", function(ingredient) ingredient.amount = ingredient.amount + 6 return ingredient end)

khaoslib_technology:load("railway"):add_prerequisite("basic-alloys"):commit()
khaoslib_recipe:load("cargo-wagon"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = "aluminium-6061" return ingredient end):commit()
khaoslib_recipe:load("locomotive")
  :replace_ingredient("steel-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 10) return ingredient end)
  :add_ingredient {type = "item", name = "aluminium-6061", amount = 20}
  :commit()

khaoslib_recipe:load("medium-electric-pole"):replace_ingredient("copper-cable", {type = "item", name = "acsr-cable", amount = 1}):commit()
khaoslib_recipe:load("big-electric-pole"):replace_ingredient("copper-cable", {type = "item", name = "acsr-cable", amount = 2}):commit()
khaoslib_recipe:load("substation")
  :replace_ingredient("copper-cable", {type = "item", name = "acsr-cable", amount = 4})
  :add_ingredient {type = "item", name = "aluminium-plate", amount = 4}
  :commit()
