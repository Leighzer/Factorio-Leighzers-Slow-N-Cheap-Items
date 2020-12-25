local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "item",
        name = "slowncheap-loader",
        icon = "__leighzerslowncheapitems__/graphics/icons/loader.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"hidden"},
        subgroup = "belt",
        order = "d[loader]-a",
        place_result = "slowncheap-loader",
        stack_size = 50
    },
    {
        type = "recipe",
        name = "slowncheap-loader",
        enabled = false,
        hidden = true,
        energy_required = 1,
        ingredients =
        {
          {"iron-ore", 25},
          {"copper-ore", 25}
        },
        result = "slowncheap-loader"
    },
    {
        type = "loader",
        name = "slowncheap-loader",
        icon = "__leighzerslowncheapitems__/graphics/icons/loader.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving", "hidden"},
        minable = {mining_time = 0.1, result = "slowncheap-loader"},
        max_health = 170,
        filter_count = 5,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound = sounds.loader,
        corpse = "small-remnants",
        resistances =
        {
          {
            type = "fire",
            percent = 60
          }
        },
        collision_box = {{-0.4, -0.9}, {0.4, 0.9}},
        selection_box = {{-0.5, -1}, {0.5, 1}},
        animation_speed_coefficient = 32,
        belt_animation_set = slowncheap_basic_belt_animation_set,
        fast_replaceable_group = "loader",        
        speed = 0.03125 / 2,
        structure_render_layer = "lower-object",
        structure =
        {
          direction_in =
          {
            sheet =
            {
              filename = "__leighzerslowncheapitems__/graphics/entity/loader/loader-structure.png",
              priority = "extra-high",
              width = 64,
              height = 64
            }
          },
          direction_out =
          {
            sheet =
            {
              filename = "__leighzerslowncheapitems__/graphics/entity/loader/loader-structure.png",
              priority = "extra-high",
              width = 64,
              height = 64,
              y = 64
            }
          }
        }
    }
})