local hit_effects = require ("__base__.prototypes.entity.demo-hit-effects")
local sounds = require("__base__.prototypes.entity.demo-sounds")

data:extend({
    {
        type = "item",
        name = "slowncheap-burner-inserter",
        icon = "__leighzerslowncheapitems__/graphics/icons/slowncheap-burner-inserter.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "inserter",
        order = "a",
        place_result = "slowncheap-burner-inserter",
        stack_size = 50
    },

    {
        type = "recipe",
        name = "slowncheap-burner-inserter",
        ingredients = {{"iron-ore", 1}},
        result = "slowncheap-burner-inserter"
    },
    
    {
        type = "inserter",
        name = "slowncheap-burner-inserter",
        icon = "__leighzerslowncheapitems__/graphics/icons/slowncheap-burner-inserter.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.1, result = "slowncheap-burner-inserter"},
        max_health = 100,
        corpse = "small-remnants",--"burner-inserter-remnants",
        dying_explosion = "burner-inserter-explosion",
        resistances =
        {
          {
            type = "fire",
            percent = 90
          }
        },
        collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
        selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
        damaged_trigger_effect = hit_effects.entity(),
        energy_per_movement = "40KJ",
        energy_per_rotation = "40KJ",
        energy_source =
        {
          type = "burner",
          fuel_category = "chemical",
          effectivity = 1,
          fuel_inventory_size = 1,
          smoke =
          {
            {
              name = "smoke",
              deviation = {0.1, 0.1},
              frequency = 9
            }
          }
        },
        extension_speed = 0.0214 / 2,
        rotation_speed = 0.01 / 2,
        fast_replaceable_group = "inserter",
        next_upgrade = "burner-inserter",
        vehicle_impact_sound = sounds.generic_impact,
        working_sound = sounds.inserter_basic,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        hand_base_picture =
        {
          filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-burner-inserter/slowncheap-burner-inserter-hand-base.png",
          priority = "extra-high",
          width = 8,
          height = 34,
          hr_version =
          {
            filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-burner-inserter/hr-slowncheap-burner-inserter-hand-base.png",
            priority = "extra-high",
            width = 32,
            height = 136,
            scale = 0.25
          }
        },
        hand_closed_picture =
        {
          filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-burner-inserter/slowncheap-burner-inserter-hand-closed.png",
          priority = "extra-high",
          width = 18,
          height = 41,
          hr_version =
          {
            filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-burner-inserter/hr-slowncheap-burner-inserter-hand-closed.png",
            priority = "extra-high",
            width = 72,
            height = 164,
            scale = 0.25
          }
        },
        hand_open_picture =
        {
          filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-burner-inserter/slowncheap-burner-inserter-hand-open.png",
          priority = "extra-high",
          width = 18,
          height = 41,
          hr_version =
          {
            filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-burner-inserter/hr-slowncheap-burner-inserter-hand-open.png",
            priority = "extra-high",
            width = 72,
            height = 164,
            scale = 0.25
          }
        },
        hand_base_shadow =
        {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
          priority = "extra-high",
          width = 8,
          height = 33,
          hr_version =
          {
            filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
            priority = "extra-high",
            width = 32,
            height = 132,
            scale = 0.25
          }
        },
        hand_closed_shadow =
        {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
          priority = "extra-high",
          width = 18,
          height = 41,
          hr_version =
          {
            filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-closed-shadow.png",
            priority = "extra-high",
            width = 72,
            height = 164,
            scale = 0.25
          }
        },
        hand_open_shadow =
        {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
          priority = "extra-high",
          width = 18,
          height = 41,
          hr_version =
          {
            filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-open-shadow.png",
            priority = "extra-high",
            width = 72,
            height = 164,
            scale = 0.25
          }
        },
        pickup_position = {0, -1},
        insert_position = {0, 1.2},
        platform_picture =
        {
          sheet =
          {
            filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-burner-inserter/slowncheap-burner-inserter-platform.png",
            priority = "extra-high",
            width = 46,
            height = 46,
            shift = {0.09375, 0},
            hr_version =
            {
              filename = "__leighzerslowncheapitems__/graphics/entity/slowncheap-burner-inserter/hr-slowncheap-burner-inserter-platform.png",
              priority = "extra-high",
              width = 105,
              height = 79,
              shift = util.by_pixel(1.5, 7.5-1),
              scale = 0.5
            }
          }
        },
        circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
        circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
        circuit_wire_max_distance = inserter_circuit_wire_max_distance,
        default_stack_control_input_signal = inserter_default_stack_control_input_signal
      }
})
