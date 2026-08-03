require("__base__.prototypes.factoriopedia-util");
local khaoslib_entity = require('__khaoslib__.prototypes.entity')
local resource_autoplace = require('__core__.lualib.resource-autoplace')

data.raw["planet"]["nauvis"].map_gen_settings = util.merge {data.raw["planet"]["nauvis"].map_gen_settings, {
  autoplace_controls = {
    ["aluminium-ore"] = {},
  },
  autoplace_settings = {
    entity = {
      settings = {
        ["aluminium-ore"] = {},
      },
    },
  },
}}

resource_autoplace.initialize_patch_set("aluminium-ore", true)

data:extend {
  {
    type = "autoplace-control",
    name = "aluminium-ore",
    localised_name = {"", "[entity=aluminium-ore] ", {"entity-name.aluminium-ore"}},
    category = "resource",
    order = "a-ba",
    richness = true,
  },
}

khaoslib_entity:load {
    type = "resource",
    name = "aluminium-ore",
    flags = {"placeable-neutral"},
    order = "a-b-b",

    map_color = {r = 1, g = 0.8, b = 0.5},
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},

    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,

    factoriopedia_simulation = {
      init = make_resource("aluminium-ore"),
    },

    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "aluminium-ore",
      order = "b",
      base_density = 6,
      base_spots_per_km2 = 1,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1.2,
      starting_rq_factor_multiplier = 1.7,
    },

    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages = {
      sheet = {
        filename = "__khaosaluminium__/graphics/entity/aluminium-ore/aluminium-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5,
      },
    },
} :set_icons {{icon = "__khaosaluminium__/graphics/icons/aluminium-ore.png", icon_size = 64}}
  :set_minable {
    hardness = 1,
    mining_time = 1,
    mining_particle = mods["khaostitanium"] and "titanium-ore-particle" or "iron-ore-particle",
    result = "aluminium-ore"
  }
  :commit()
