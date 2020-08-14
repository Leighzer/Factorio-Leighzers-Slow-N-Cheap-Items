if leighzermods.leighzerslowncheapitems.slowncheapTransportBeltEnabled then
  require("prototypes.slowncheap-transport-belt-pictures")

  local hit_effects = require ("__base__.prototypes.entity.demo-hit-effects")
  local sounds = require("__base__.prototypes.entity.demo-sounds")

  data:extend({ 
    {
      type = "item",
      name = "slowncheap-transport-belt",
      icon = "__leighzerslowncheapitems__/graphics/icons/slowncheap-transport-belt.png",
      icon_size = 64, icon_mipmaps = 4,
      subgroup = "belt",
      order = "a[transport-belt]-a",
      place_result = "slowncheap-transport-belt",
      stack_size = 100
    },

    {
      type = "recipe",
      name = "slowncheap-transport-belt",
      ingredients =
      {
        {"iron-ore", 2}      
      },
      result = "slowncheap-transport-belt",
      result_count = 2
    },

    {
        type = "transport-belt",
        name = "slowncheap-transport-belt",
        icon = "__leighzerslowncheapitems__/graphics/icons/slowncheap-transport-belt.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "slowncheap-transport-belt"},
        max_health = 150,
        corpse = "small-remnants",--"transport-belt-remnants",
        dying_explosion = "transport-belt-explosion",
        resistances =
        {
          {
            type = "fire",
            percent = 90
          }
        },
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        working_sound =
        {
          sound =
          {
            filename = "__base__/sound/transport-belt.ogg",
            volume = 0.3
          },
          persistent = true
        },
        animation_speed_coefficient = 32,
        belt_animation_set = slowncheap_basic_belt_animation_set,
        fast_replaceable_group = "transport-belt",
        next_upgrade = "transport-belt",
        speed = 0.03125 / 2,
        connector_frame_sprites = transport_belt_connector_frame_sprites,
        circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
        circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
        circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
    }
  })
end