local hit_effects = require ("__base__.prototypes.entity.demo-hit-effects")
local sounds = require("__base__.prototypes.entity.demo-sounds")

data:extend({
  
  {
    type = "item",
    name = "slowncheap-small-electric-pole",
    icon = "__leighzerslowncheapitems__/graphics/icons/slowncheap-small-electric-pole.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-a",
    place_result = "slowncheap-small-electric-pole",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "slowncheap-small-electric-pole",
    ingredients =
    {
      {"iron-ore", 1},
      {"copper-ore", 1}
    },
    result = "slowncheap-small-electric-pole",
    result_count = 2
  },

  {
      type = "electric-pole",
      name = "slowncheap-small-electric-pole",
      icon = "__leighzerslowncheapitems__/graphics/icons/slowncheap-small-electric-pole.png",
      icon_size = 64, icon_mipmaps = 4,
      flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
      minable = {mining_time = 0.1, result = "slowncheap-small-electric-pole"},
      max_health = 100,
      corpse = "small-remnants",--"small-electric-pole-remnants",
      dying_explosion = "ground-explosion", --"small-electric-pole-explosion",
      collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
      selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
      damaged_trigger_effect = hit_effects.entity({{-0.2, -2.2}, {0.2, 0.2}}),
      drawing_box = {{-0.5, -2.6}, {0.5, 0.5}},
      maximum_wire_distance = 7.5,
      supply_area_distance = 2.5,
      vehicle_impact_sound = sounds.car_wood_impact(0.5),
      track_coverage_during_build_by_moving = true,
      fast_replaceable_group = "electric-pole",
      pictures =
      {
        layers =
        {
          {
            filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-small-electric-pole/slowncheap-small-electric-pole.png",
            priority = "extra-high",
            width = 36,
            height = 108,
            direction_count = 4,
            shift = util.by_pixel(2, -42),
            hr_version =
            {
              filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-small-electric-pole/hr-slowncheap-small-electric-pole.png",
              priority = "extra-high",
              width = 72,
              height = 220,
              direction_count = 4,
              shift = util.by_pixel(1.5, -42.5),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/small-electric-pole/small-electric-pole-shadow.png",
            priority = "extra-high",
            width = 130,
            height = 28,
            direction_count = 4,
            shift = util.by_pixel(50, 2),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/small-electric-pole/hr-small-electric-pole-shadow.png",
              priority = "extra-high",
              width = 256,
              height = 52,
              direction_count = 4,
              shift = util.by_pixel(51, 3),
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      connection_points =
      {
        {
          shadow =
          {
            copper = util.by_pixel(98.5, 2.5),
            red = util.by_pixel(111.0, 4.5),
            green = util.by_pixel(85.5, 4.0)
          },
          wire =
          {
            copper = util.by_pixel(0.0, -82.5),
            red = util.by_pixel(13.0, -81.0),
            green = util.by_pixel(-12.5, -81.0)
          }
        },
        {
          shadow =
          {
            copper = util.by_pixel(99.5, 4.0),
            red = util.by_pixel(110.0, 9.0),
            green = util.by_pixel(92.5, -4.0)
          },
          wire =
          {
            copper = util.by_pixel(1.5, -81.0),
            red = util.by_pixel(12.0, -76.0),
            green = util.by_pixel(-6.0, -89.5)
          }
        },
        {
          shadow =
          {
            copper = util.by_pixel(100.5, 5.5),
            red = util.by_pixel(102.5, 14.5),
            green = util.by_pixel(103.5, -3.5)
          },
          wire =
          {
            copper = util.by_pixel(2.5, -79.5),
            red = util.by_pixel(4.0, -71.0),
            green = util.by_pixel(5.0, -89.5)
          }
        },
        {
          shadow =
          {
            copper = util.by_pixel(98.5, -1.5),
            red = util.by_pixel(88.0, 3.5),
            green = util.by_pixel(106.0, -9.0)
          },
          wire =
          {
            copper = util.by_pixel(0.5, -86.5),
            red = util.by_pixel(-10.5, -81.5),
            green = util.by_pixel(8.0, -93.5)
          }
        }
      },
      radius_visualisation_picture =
      {
        filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
        width = 12,
        height = 12,
        priority = "extra-high-no-scale"
      },
      water_reflection =
      {
        pictures =
        {
          filename = "__base__/graphics/entity/small-electric-pole/small-electric-pole-reflection.png",
          priority = "extra-high",
          width = 12,
          height = 28,
          shift = util.by_pixel(5, 40),
          variation_count = 4,
          scale = 5,
        },
        rotate = false,
        orientation_to_variation = true
      }
    }
})
