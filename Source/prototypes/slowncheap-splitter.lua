require("prototypes.slowncheap-transport-belt-pictures")

local hit_effects = require ("__base__.prototypes.entity.demo-hit-effects")
local sounds = require("__base__.prototypes.entity.demo-sounds")

data:extend({  

  {
    type = "item",
    name = "slowncheap-splitter",
    icon = "__leighzerslowncheapitems__/graphics/icons/slowncheap-splitter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "belt",
    order = "c[splitter]-a",
    place_result = "slowncheap-splitter",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "slowncheap-splitter",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"iron-ore", 5},
      {"copper-ore", 5}
    },
    result = "slowncheap-splitter"
  },

  {
      type = "splitter",
      name = "slowncheap-splitter",
      icon = "__leighzerslowncheapitems__/graphics/icons/slowncheap-splitter.png",
      icon_size = 64, icon_mipmaps = 4,
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 0.1, result = "slowncheap-splitter"},
      max_health = 170,
      corpse = "1x2-remnants",--"splitter-remnants",
      dying_explosion = "ground-explosion", --"splitter-explosion",
      resistances =
      {
        {
          type = "fire",
          percent = 60
        }
      },
      collision_box = {{-0.9, -0.4}, {0.9, 0.4}},
      selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
      damaged_trigger_effect = hit_effects.entity(),
      animation_speed_coefficient = 32,
      structure_animation_speed_coefficient = 0.7,
      structure_animation_movement_cooldown = 10,
      fast_replaceable_group = "transport-belt",
      next_upgrade = "splitter",
      speed = 0.03125 / 2,
      belt_animation_set = slowncheap_basic_belt_animation_set,
      working_sound = sounds.splitter,
      structure =
      {
        north =
        {
          filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-splitter/slowncheap-splitter-north.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 82,
          height = 36,
          shift = util.by_pixel(6, 0),
          hr_version =
          {
            filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-splitter/hr-slowncheap-splitter-north.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 160,
            height = 70,
            shift = util.by_pixel(7, 0),
            scale = 0.5
          }
        },
        east =
        {
          filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-splitter/slowncheap-splitter-east.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 46,
          height = 44,
          shift = util.by_pixel(4, 12),
          hr_version =
          {
            filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-splitter/hr-slowncheap-splitter-east.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 90,
            height = 84,
            shift = util.by_pixel(4, 13),
            scale = 0.5
          }
        },
        south =
        {
          filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-splitter/slowncheap-splitter-south.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 82,
          height = 32,
          shift = util.by_pixel(4, 0),
          hr_version =
          {
            filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-splitter/hr-slowncheap-splitter-south.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 164,
            height = 64,
            shift = util.by_pixel(4, 0),
            scale = 0.5
          }
        },
        west =
        {
          filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-splitter/slowncheap-splitter-west.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 46,
          height = 44,
          shift = util.by_pixel(6, 12),
          hr_version =
          {
            filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-splitter/hr-slowncheap-splitter-west.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 90,
            height = 86,
            shift = util.by_pixel(6, 12),
            scale = 0.5
          }
        }
      },
      structure_patch =
      {
        north = util.empty_sprite(),
        east =
        {
          filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-splitter/slowncheap-splitter-east-top_patch.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 46,
          height = 52,
          shift = util.by_pixel(4, -20),
          hr_version =
          {
            filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-splitter/hr-slowncheap-splitter-east-top_patch.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 90,
            height = 104,
            shift = util.by_pixel(4, -20),
            scale = 0.5
          }
        },
        south = util.empty_sprite(),
        west =
        {
          filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-splitter/slowncheap-splitter-west-top_patch.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 46,
          height = 48,
          shift = util.by_pixel(6, -18),
          hr_version =
          {
            filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-splitter/hr-slowncheap-splitter-west-top_patch.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 90,
            height = 96,
            shift = util.by_pixel(6, -18),
            scale = 0.5
          }
        }
      }
    }
})

table.insert(data.raw.technology["logistics"].effects,1,{
  type = "unlock-recipe",
  recipe = "slowncheap-splitter"
})
