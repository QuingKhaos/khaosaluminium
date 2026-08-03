local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "aluminium-ore",
  localised_name = {"entity-name.aluminium-ore"},
  subgroup = "raw-resource",
  order = "fa[aluminium-ore]",
  stack_size = 50,

  inventory_move_sound = item_sounds.resource_inventory_move,
  pick_sound = item_sounds.resource_inventory_pickup,
  drop_sound = item_sounds.resource_inventory_move,

  pictures = {
    {filename = "__khaosaluminium__/graphics/icons/aluminium-ore.png", size = 64, scale = 0.5},
    {filename = "__khaosaluminium__/graphics/icons/aluminium-ore-1.png", size = 64, scale = 0.5},
    {filename = "__khaosaluminium__/graphics/icons/aluminium-ore-2.png", size = 64, scale = 0.5},
    {filename = "__khaosaluminium__/graphics/icons/aluminium-ore-3.png", size = 64, scale = 0.5},
  },
} :set_icons {{icon = "__khaosaluminium__/graphics/icons/aluminium-ore.png", icon_size = 64}}
  :commit()
