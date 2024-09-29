local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
  {
    type = "recipe",
    name = "kr-small-roboport",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "imersium-beam", amount = 3 },
      { type = "item", name = "steel-plate", amount = 10 },
      { type = "item", name = "rare-metals", amount = 20 },
      { type = "item", name = "ai-core", amount = 1 },
      { type = "item", name = "electronic-components", amount = 5 },
    },
    results = { { type = "item", name = "kr-small-roboport", amount = 2 } },
  },
  {
    type = "item",
    name = "kr-small-roboport",
    icon = "__Krastorio2Assets__/icons/entities/small-roboport.png",
    subgroup = "logistic-network",
    order = "c[signal]-b[small-roboport]",
    place_result = "kr-small-roboport",
    stack_size = 50,
  },
  {
    type = "roboport",
    name = "kr-small-roboport",
    icon = "__Krastorio2Assets__/icons/entities/small-roboport.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "kr-small-roboport" },
    collision_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    recharge_minimum = "50MJ",
    charging_energy = "3MW",
    logistics_radius = 18,
    construction_radius = 34,
    charge_approach_distance = 3,
    robot_slots_count = 0,
    material_slots_count = 0,
    stationing_offset = { 0, 0 },
    charging_offsets = {
      { -0.5, -1 },
      { -1, -0.5 },
      { -1, 0.5 },
      { -0.5, 1 },
      { 0.5, 1 },
      { 1, 0.5 },
      { 1, -0.5 },
      { 0.5, -1 },
    },
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 0.33,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "12MW",
      buffer_capacity = "300MJ",
    },
    energy_usage = "50kW",
    max_health = 350,
    corpse = "medium-remnants",
    damaged_trigger_effect = hit_effects.entity(),
    dying_explosion = "medium-explosion",
    resistances = {
      { type = "physical", percent = 50 },
      { type = "fire", percent = 75 },
      { type = "impact", percent = 75 },
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.generic_impact,
    base = {
      layers = {
        {
          filename = "__Krastorio2Assets__/entities/small-roboport/small-roboport.png",
          width = 240,
          height = 300,
          shift = { 0, -0.1 },
          scale = 0.25,
        },
        {
          filename = "__Krastorio2Assets__/entities/small-roboport/small-roboport-sh.png",
          width = 322,
          height = 166,
          shift = { 0.48, 0.43 },
          draw_as_shadow = true,
          scale = 0.25,
        },
      },
    },
    base_patch = util.empty_sprite(),
    base_animation = {
      layers = {
        {
          filename = "__Krastorio2Assets__/entities/small-roboport/small-roboport-animation.png",
          priority = "high",
          width = 110,
          height = 80,
          scale = 0.25,
          frame_count = 8,
          shift = { 0, -0.92 },
          draw_as_glow = true,
          animation_speed = 0.1,
        },
        {
          filename = "__Krastorio2Assets__/entities/small-roboport/small-roboport-animation-light.png",
          priority = "high",
          width = 110,
          height = 80,
          scale = 0.25,
          frame_count = 8,
          shift = { 0, -0.92 },
          draw_as_light = true,
          animation_speed = 0.1,
        },
      },
    },
    door_animation_up = util.empty_sprite(),
    door_animation_down = util.empty_sprite(),
    recharging_animation = {
      layers = {
        {
          filename = "__Krastorio2Assets__/entities/small-roboport/small-roboport-recharging.png",
          priority = "high",
          width = 37,
          height = 35,
          frame_count = 16,
          scale = 1.5,
          draw_as_glow = true,
          animation_speed = 0.5,
        },
        {
          filename = "__Krastorio2Assets__/entities/small-roboport/small-roboport-recharging-light.png",
          priority = "high",
          width = 37,
          height = 35,
          frame_count = 16,
          scale = 1.5,
          draw_as_light = true,
          animation_speed = 0.5,
        },
      },
    },
    recharging_light = {
      intensity = 0.2,
      size = 1,
      color = { r = 0.196, g = 0.658, b = 0.650 },
    },
    water_reflection = {
      pictures = {
        filename = "__Krastorio2Assets__/entities/small-roboport/small-roboport-reflection.png",
        priority = "extra-high",
        width = 16,
        height = 22,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },
  },
})
