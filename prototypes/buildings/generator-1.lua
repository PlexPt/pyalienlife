RECIPE {
    type = "recipe",
    name = "generator-1",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"steel-plate", 15},
        {"pipe", 10},
        {"auog", 1},
        {"iron-plate", 50},
        {"aluminium-plate", 50},
        {"lead-plate", 30},
        {"iron-stick", 30},
        {"iron-gear-wheel", 40}
    },
    results = {
        {"generator-1", 1}
    }
}:add_unlock("domestication")

ITEM {
    type = "item",
    name = "generator-1",
    icon = "__pyalienlifegraphics__/graphics/icons/generator-1.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-generators",
    order = "a",
    place_result = "generator-1",
    stack_size = 10
}

ENTITY {
    type = "burner-generator",
    name = "generator-1",
    icon = "__pyalienlifegraphics__/graphics/icons/generator-1.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "generator-1"},
    max_health = 100,
    corpse = "big-remnants",
    resistances = {
        {
            type = "fire",
            percent = 70
        }
    },
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    energy_source =
		{
				type = "electric",
				usage_priority = "primary-output",
		},
	burner =
		{
			type = "burner",
			fuel_category = "auog",
			effectivity = 2,
            fuel_inventory_size = 1,
            burnt_inventory_size = 1,
			emissions_per_minute = 0,
		},
	effectivity = 1,
	max_power_output = "18MW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/generator-1/a1.png",
                width = 32,
                height = 288,
                line_length = 64,
                frame_count = 250,
                animation_speed = 0.4,
                shift = util.by_pixel(-96, -32)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/generator-1/a2.png",
                width = 32,
                height = 288,
                line_length = 64,
                frame_count = 250,
                animation_speed = 0.4,
                shift = util.by_pixel(-64, -32)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/generator-1/a3.png",
                width = 32,
                height = 288,
                line_length = 64,
                frame_count = 250,
                animation_speed = 0.4,
                shift = util.by_pixel(-32, -32)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/generator-1/a4.png",
                width = 32,
                height = 288,
                line_length = 64,
                frame_count = 250,
                animation_speed = 0.4,
                shift = util.by_pixel(-0, -32)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/generator-1/a5.png",
                width = 32,
                height = 288,
                line_length = 64,
                frame_count = 250,
                animation_speed = 0.4,
                shift = util.by_pixel(32, -32)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/generator-1/a6.png",
                width = 32,
                height = 288,
                line_length = 64,
                frame_count = 250,
                animation_speed = 0.4,
                shift = util.by_pixel(64, -32)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/generator-1/a7.png",
                width = 32,
                height = 288,
                line_length = 64,
                frame_count = 250,
                animation_speed = 0.4,
                shift = util.by_pixel(96, -32)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/generator-1/a8.png",
                width = 32,
                height = 288,
                line_length = 64,
                frame_count = 250,
                animation_speed = 0.4,
                shift = util.by_pixel(128, -32)
            },
    },
},

    min_perceived_performance = 0.1,
    performance_to_sound_speedup = 0.0,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/generator-1.ogg", volume = 0.80},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/generator-1.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
