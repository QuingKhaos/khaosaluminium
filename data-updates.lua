local khaoslib_entity = require('__khaoslib__.prototypes.entity')
local resource_autoplace = require('__core__.lualib.resource-autoplace')

require("__khaosaluminium__.prototypes.map-gen-preset-updates")

khaoslib_entity:load("resource", "copper-ore")
  :unset("autoplace")
  :set {
    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "copper-ore",
      order = "b",
      base_density = 6, -- decreased from 8 in vanilla
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1.1,
      starting_rq_factor_multiplier = 1.1,
      candidate_spot_count = 22,
    },
  }
  :commit()
