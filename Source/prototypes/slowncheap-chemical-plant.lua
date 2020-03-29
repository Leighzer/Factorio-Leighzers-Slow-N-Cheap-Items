local hit_effects = require ("__base__.prototypes.entity.demo-hit-effects")
local sounds = require("__base__.prototypes.entity.demo-sounds")

data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "assembling-machine"

data:extend({  

  {
    type = "item",
    name = "slowncheap-chemical-plant",
    icon = "__leighzerslowncheapitems__/graphics/icons/slowncheap-chemical-plant.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "e",
    place_result = "slowncheap-chemical-plant",
    stack_size = 10
  },

  {
    type = "recipe",
    name = "slowncheap-chemical-plant",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"iron-ore", 12},
      {"copper-ore", 8},      
    },
    result= "slowncheap-chemical-plant"
  },
  
  {
      type = "assembling-machine",
      name = "slowncheap-chemical-plant",
      icon = "__leighzerslowncheapitems__/graphics/icons/slowncheap-chemical-plant.png",
      icon_size = 64, icon_mipmaps = 4,
      flags = {"placeable-neutral","placeable-player", "player-creation"},
      minable = {mining_time = 0.1, result = "slowncheap-chemical-plant"},
      max_health = 300,
      corpse = "medium-remnants",--"chemical-plant-remnants",
      dying_explosion = "chemical-plant-explosion",
      fast_replaceable_group = "assembling-machine",
      next_upgrade = "chemical-plant",
      collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      damaged_trigger_effect = hit_effects.entity(),
      drawing_box = {{-1.5, -1.9}, {1.5, 1.5}},
      module_specification =
      {
        module_slots = 3
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
  
      animation = make_4way_animation_from_spritesheet({ layers =
      {
        {
          filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-chemical-plant/slowncheap-chemical-plant.png",
          width = 108,
          height = 148,
          frame_count = 24,
          line_length = 12,
          shift = util.by_pixel(1, -9),
          hr_version =
          {
            filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-chemical-plant/hr-slowncheap-chemical-plant.png",
            width = 220,
            height = 292,
            frame_count = 24,
            line_length = 12,
            shift = util.by_pixel(0.5, -9),
            scale = 0.5
            }
        },
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
          width = 154,
          height = 112,
          repeat_count = 24,
          frame_count = 1,
          shift = util.by_pixel(28, 6),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
            width = 312,
            height = 222,
            repeat_count = 24,
            frame_count = 1,
            shift = util.by_pixel(27, 6),
            draw_as_shadow = true,
            scale = 0.5
            }
        }
      }}),
      working_visualisations =
      {
        {
          apply_recipe_tint = "primary",
          north_animation =
          {
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-north.png",
            frame_count = 24,
            line_length = 6,
            width = 32,
            height = 24,
            shift = util.by_pixel(24, 14),
            hr_version =
            {
              filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-north.png",
              frame_count = 24,
              line_length = 6,
              width = 66,
              height = 44,
              shift = util.by_pixel(23, 15),
              scale = 0.5
            }
          },
          east_animation =
          {
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-east.png",
            frame_count = 24,
            line_length = 6,
            width = 36,
            height = 18,
            shift = util.by_pixel(0, 22),
            hr_version =
            {
              filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-east.png",
              frame_count = 24,
              line_length = 6,
              width = 70,
              height = 36,
              shift = util.by_pixel(0, 22),
              scale = 0.5
            }
          },
          south_animation =
          {
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-south.png",
            frame_count = 24,
            line_length = 6,
            width = 34,
            height = 24,
            shift = util.by_pixel(0, 16),
            hr_version =
            {
              filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-south.png",
              frame_count = 24,
              line_length = 6,
              width = 66,
              height = 42,
              shift = util.by_pixel(0, 17),
              scale = 0.5
            }
          },
          west_animation =
          {
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-west.png",
            frame_count = 24,
            line_length = 6,
            width = 38,
            height = 20,
            shift = util.by_pixel(-10, 12),
            hr_version =
            {
              filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-west.png",
              frame_count = 24,
              line_length = 6,
              width = 74,
              height = 36,
              shift = util.by_pixel(-10, 13),
              scale = 0.5
            }
          }
        },
        {
          apply_recipe_tint = "secondary",
          north_animation =
          {
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-north.png",
            frame_count = 24,
            line_length = 6,
            width = 32,
            height = 22,
            shift = util.by_pixel(24, 14),
            hr_version =
            {
              filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-north.png",
              frame_count = 24,
              line_length = 6,
              width = 62,
              height = 42,
              shift = util.by_pixel(24, 15),
              scale = 0.5
            }
          },
          east_animation =
          {
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-east.png",
            frame_count = 24,
            line_length = 6,
            width = 34,
            height = 18,
            shift = util.by_pixel(0, 22),
            hr_version =
            {
              filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-east.png",
              frame_count = 24,
              line_length = 6,
              width = 68,
              height = 36,
              shift = util.by_pixel(0, 22),
              scale = 0.5
            }
          },
          south_animation =
          {
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-south.png",
            frame_count = 24,
            line_length = 6,
            width = 32,
            height = 18,
            shift = util.by_pixel(0, 18),
            hr_version =
            {
              filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-south.png",
              frame_count = 24,
              line_length = 6,
              width = 60,
              height = 40,
              shift = util.by_pixel(1, 17),
              scale = 0.5
            }
          },
          west_animation =
          {
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-west.png",
            frame_count = 24,
            line_length = 6,
            width = 36,
            height = 16,
            shift = util.by_pixel(-10, 14),
            hr_version =
            {
              filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-west.png",
              frame_count = 24,
              line_length = 6,
              width = 68,
              height = 28,
              shift = util.by_pixel(-9, 15),
              scale = 0.5
            }
          }
        },
        {
          apply_recipe_tint = "tertiary",
          fadeout = true,
          constant_speed = true,
          north_position = util.by_pixel_hr(-30, -161),
          east_position = util.by_pixel_hr(29, -150),
          south_position = util.by_pixel_hr(12, -134),
          west_position = util.by_pixel_hr(-32, -130),
          render_layer = "wires",
          animation =
          {
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-outer.png",
            frame_count = 47,
            line_length = 16,
            width = 46,
            height = 94,
            animation_speed = 0.5,
            shift = util.by_pixel(-2, -40),
            hr_version =
            {
              filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-smoke-outer.png",
              frame_count = 47,
              line_length = 16,
              width = 90,
              height = 188,
              animation_speed = 0.5,
              shift = util.by_pixel(-2, -40),
              scale = 0.5
            }
          }
        },
        {
          apply_recipe_tint = "quaternary",
          fadeout = true,
          constant_speed = true,
          north_position = util.by_pixel_hr(-30, -161),
          east_position = util.by_pixel_hr(29, -150),
          south_position = util.by_pixel_hr(12, -134),
          west_position = util.by_pixel_hr(-32, -130),
          render_layer = "wires",
          animation =
          {
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-inner.png",
            frame_count = 47,
            line_length = 16,
            width = 20,
            height = 42,
            animation_speed = 0.5,
            shift = util.by_pixel(0, -14),
            hr_version =
            {
              filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-smoke-inner.png",
              frame_count = 47,
              line_length = 16,
              width = 40,
              height = 84,
              animation_speed = 0.5,
              shift = util.by_pixel(0, -14),
              scale = 0.5
            }
          }
        }
      },
      vehicle_impact_sound = sounds.generic_impact,
      working_sound =
      {
        sound =
        {
          {
            filename = "__base__/sound/chemical-plant.ogg",
            volume = 0.5,
          }
        },
        max_sounds_per_type = 2,
        --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
        apparent_volume = 1.5,
        fade_in_ticks = 4,
        fade_out_ticks = 30,
      },
      crafting_speed = 1 / 2,
      energy_source =
      {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 4 / 2
      },
      energy_usage = "105kW",--"210kW",
      crafting_categories = {"chemistry"},
      fluid_boxes =
      {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{ type="input", position = {-1, -2} }}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{ type="input", position = {1, -2} }}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{ position = {-1, 2} }}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{ position = {1, 2} }}
        }
      },
      water_reflection =
      {
        pictures =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-reflection.png",
          priority = "extra-high",
          width = 28,
          height = 36,
          shift = util.by_pixel(5, 60),
          variation_count = 4,
          scale = 5,
        },
        rotate = false,
        orientation_to_variation = true
      }
    }
})

table.insert(data.raw.technology["oil-processing"].effects,1,{
  type = "unlock-recipe",
  recipe = "slowncheap-chemical-plant"
})