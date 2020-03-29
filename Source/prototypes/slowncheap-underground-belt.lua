
require("prototypes.slowncheap-transport-belt-pictures")

local hit_effects = require ("__base__.prototypes.entity.demo-hit-effects")
local sounds = require("__base__.prototypes.entity.demo-sounds")


data:extend({
  
  {
    type = "item",
    name = "slowncheap-underground-belt",
    icon = "__leighzerslowncheapitems__/graphics/icons/slowncheap-underground-belt.png",    
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "belt",
    order = "b[underground-belt]-a",
    place_result = "slowncheap-underground-belt",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "slowncheap-underground-belt",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"iron-ore", 10},      
    },
    result_count = 2,
    result = "slowncheap-underground-belt"
  },

  {
      type = "underground-belt",
      name = "slowncheap-underground-belt",
      icon = "__leighzerslowncheapitems__/graphics/icons/slowncheap-underground-belt.png",    
      icon_size = 64, icon_mipmaps = 4,
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 0.1, result = "slowncheap-underground-belt"},
      max_health = 150,
      corpse = "small-remnants",--"underground-belt-remnants",
      dying_explosion = "underground-belt-explosion",
      max_distance = 5,
      underground_sprite =
      {
        filename = "__core__/graphics/arrows/underground-lines.png",
        priority = "high",
        width = 64,
        height = 64,
        x = 64,
        scale = 0.5
      },
      underground_remove_belts_sprite =
      {
        filename = "__core__/graphics/arrows/underground-lines-remove.png",
        priority = "high",
        width = 64,
        height = 64,
        x = 64,
        scale = 0.5
      },
      resistances =
      {
        {
          type = "fire",
          percent = 60
        },
        {
          type = "impact",
          percent = 30
        }
      },
      collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
      selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
      damaged_trigger_effect = hit_effects.entity(),
      animation_speed_coefficient = 32,
      belt_animation_set = slowncheap_basic_belt_animation_set,
      fast_replaceable_group = "transport-belt",
      next_upgrade = "underground-belt",
      speed = 0.03125 / 2,
      structure =
      {
        direction_in =
        {
          sheet =
          {
            filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-underground-belt/slowncheap-underground-belt-structure.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            y = 96,
            hr_version =
            {
              filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-underground-belt/hr-slowncheap-underground-belt-structure.png",
              priority = "extra-high",
              width = 192,
              height =192,
              y = 192,
              scale = 0.5
            }
          }
        },
        direction_out =
        {
          sheet =
          {
            filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-underground-belt/slowncheap-underground-belt-structure.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            hr_version =
            {
              filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-underground-belt/hr-slowncheap-underground-belt-structure.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              scale = 0.5
            }
  
          }
  
        },
        direction_in_side_loading =
        {
          sheet =
          {
            filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-underground-belt/slowncheap-underground-belt-structure.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            y = 96*3,
            hr_version =
            {
              filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-underground-belt/hr-slowncheap-underground-belt-structure.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              y = 192*3,
              scale = 0.5
            }
          }
        },
        direction_out_side_loading =
        {
          sheet =
          {
            filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-underground-belt/slowncheap-underground-belt-structure.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            y = 96*2,
            hr_version =
            {
              filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-underground-belt/hr-slowncheap-underground-belt-structure.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              y= 192*2,
              scale = 0.5
            },
  
          }
  
        },
        back_patch =
        {
          sheet =
          {
            filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-back-patch.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            hr_version =
            {
              filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-back-patch.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              scale = 0.5
            }
  
          }
        },
        front_patch =
        {
          sheet =
          {
            filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-front-patch.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            hr_version =
            {
              filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-front-patch.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              scale = 0.5
            }
  
          }
        }
      }
    }
})

table.insert(data.raw.technology["logistics"].effects,1,{
  type = "unlock-recipe",
  recipe = "slowncheap-underground-belt"
})