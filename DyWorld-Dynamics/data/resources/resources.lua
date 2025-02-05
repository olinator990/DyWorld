local noise = require("noise")
local tne = noise.to_noise_expression
local resource_autoplace = require("resource-autoplace")

local Iron_Base_Per_KM = 1.8
local Iron_Random_Min = 0.25
local Iron_Random_Max = 1.5
local Iron_Richness = 0
local Iron_Spot = 22

local Copper_Base_Per_KM = 1.5
local Copper_Random_Min = 0.2
local Copper_Random_Max = 1.4
local Copper_Richness = 0
local Copper_Spot = 20

local Tin_Base_Per_KM = 1.6
local Tin_Random_Min = 0.3
local Tin_Random_Max = 1.3
local Tin_Richness = 0
local Tin_Spot = 24

ore_sound =
{
  {
    filename = "__base__/sound/walking/resources/ore-01.ogg",
    volume = 0.7
  },
  {
    filename = "__base__/sound/walking/resources/ore-02.ogg",
    volume = 0.7
  },
  {
    filename = "__base__/sound/walking/resources/ore-03.ogg",
    volume = 0.7
  },
  {
    filename = "__base__/sound/walking/resources/ore-04.ogg",
    volume = 0.7
  },
  {
    filename = "__base__/sound/walking/resources/ore-05.ogg",
    volume = 0.7
  },
  {
    filename = "__base__/sound/walking/resources/ore-06.ogg",
    volume = 0.7
  },
  {
    filename = "__base__/sound/walking/resources/ore-07.ogg",
    volume = 0.7
  },
  {
    filename = "__base__/sound/walking/resources/ore-08.ogg",
    volume = 0.7
  },
  {
    filename = "__base__/sound/walking/resources/ore-09.ogg",
    volume = 0.7
  },
  {
    filename = "__base__/sound/walking/resources/ore-10.ogg",
    volume = 0.7
  }
}

local function resource(resource_parameters, autoplace_parameters)
  if coverage == nil then coverage = 0.02 end

  return
  {
    type = "resource",
    name = resource_parameters.name,
    --icon = "__base__/graphics/icons/" .. resource_parameters.name .. ".png",
    icon = "__base__/graphics/icons/stone.png",
    icon_size = 64,
    icon_mipmaps = 4,
    category = resource_parameters.category,
    flags = {"placeable-neutral"},
    order="a-b-"..resource_parameters.order,
    tree_removal_probability = 0.8,
    tree_removal_max_distance = 32 * 32,
    minable =
    {
      mining_particle = "stone-particle",
      mining_time = resource_parameters.mining_time,
      results = {
        {name = resource_parameters.minable, amount_min = 1, amount_max = resource_parameters.amount_max or 1, probability = resource_parameters.minable_probability},
      }
    },
    walking_sound = resource_parameters.walking_sound,
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = resource_parameters.name,
      order = resource_parameters.order,
      base_density = autoplace_parameters.base_density,
      has_starting_area_placement = autoplace_parameters.has_starting_area_placement,
      regular_rq_factor_multiplier = autoplace_parameters.regular_rq_factor_multiplier,
      starting_rq_factor_multiplier = autoplace_parameters.starting_rq_factor_multiplier,
      candidate_spot_count = autoplace_parameters.candidate_spot_count,
	  autoplace_control_name = autoplace_parameters.autoplace_control_name,
    },
    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages =
    {
      sheet =
      {
        --filename = "__base__/graphics/entity/" .. resource_parameters.name .. "/" .. resource_parameters.name .. ".png",
        filename = "__base__/graphics/entity/stone/stone.png",
		tint = resource_parameters.color,
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version =
        {
          --filename = "__base__/graphics/entity/" .. resource_parameters.name .. "/hr-" .. resource_parameters.name .. ".png",
          filename = "__base__/graphics/entity/stone/hr-stone.png",
		  tint = resource_parameters.color,
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
        }
      }
    },
    map_color = resource_parameters.map_color,
    mining_visualisation_tint = resource_parameters.mining_visualisation_tint
  }
end

local function resource_ore(resource_parameters, autoplace_parameters)
  if coverage == nil then coverage = 0.02 end

  return
  {
    type = "resource",
    name = resource_parameters.name,
    --icon = "__base__/graphics/icons/" .. resource_parameters.name .. ".png",
    icon = "__base__/graphics/icons/stone.png",
    icon_size = 64,
    icon_mipmaps = 4,
    category = resource_parameters.category,
    flags = {"placeable-neutral"},
    order="a-b-"..resource_parameters.order,
    tree_removal_probability = 0.8,
    tree_removal_max_distance = 32 * 32,
    minable =
    {
      mining_particle = "stone-particle",
      mining_time = resource_parameters.mining_time,
      results = {
        {name = resource_parameters.minable, amount_min = 1, amount_max = 1, probability = resource_parameters.minable_probability},
        {name = resource_parameters.minable.."-impure", amount_min = 1, amount_max = 1, probability = (1 - resource_parameters.minable_probability)},
      }
    },
    walking_sound = resource_parameters.walking_sound,
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = resource_parameters.name,
      order = resource_parameters.order,
      base_density = autoplace_parameters.base_density,
      has_starting_area_placement = autoplace_parameters.has_starting_area_placement,
      regular_rq_factor_multiplier = autoplace_parameters.regular_rq_factor_multiplier,
      starting_rq_factor_multiplier = autoplace_parameters.starting_rq_factor_multiplier,
      candidate_spot_count = autoplace_parameters.candidate_spot_count,
	  autoplace_control_name = autoplace_parameters.autoplace_control_name,
	  base_spots_per_km2 = autoplace_parameters.base_spots_per_km2,
	  random_spot_size_minimum = autoplace_parameters.random_spot_size_minimum,
	  random_spot_size_maximum = autoplace_parameters.random_spot_size_maximum,
	  minimum_richness = autoplace_parameters.minimum_richness,
	  patch_set_name = autoplace_parameters.patch_set_name,
    },
    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages =
    {
      sheet =
      {
        --filename = "__base__/graphics/entity/" .. resource_parameters.name .. "/" .. resource_parameters.name .. ".png",
        filename = "__base__/graphics/entity/stone/stone.png",
		--tint = resource_parameters.color,
		tint = {resource_parameters.color[1], resource_parameters.color[2], resource_parameters.color[3], resource_parameters.minable_probability},
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version =
        {
          --filename = "__base__/graphics/entity/" .. resource_parameters.name .. "/hr-" .. resource_parameters.name .. ".png",
          filename = "__base__/graphics/entity/stone/hr-stone.png",
		  tint = {resource_parameters.color[1], resource_parameters.color[2], resource_parameters.color[3], resource_parameters.minable_probability},
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
        }
      }
    },
    map_color = resource_parameters.map_color,
    mining_visualisation_tint = resource_parameters.mining_visualisation_tint
  }
end

local function resource_coal(resource_parameters, autoplace_parameters)
  if coverage == nil then coverage = 0.02 end

  return
  {
    type = "resource",
    name = resource_parameters.name,
    --icon = "__base__/graphics/icons/" .. resource_parameters.name .. ".png",
    icon = "__base__/graphics/icons/stone.png",
    icon_size = 64,
    icon_mipmaps = 4,
    category = resource_parameters.category,
    flags = {"placeable-neutral"},
    order="a-b-"..resource_parameters.order,
    tree_removal_probability = 0.8,
    tree_removal_max_distance = 32 * 32,
    minable =
    {
      mining_particle = "stone-particle",
      mining_time = resource_parameters.mining_time,
      results = {
        {name = resource_parameters.minable, amount_min = 1, amount_max = 1, probability = resource_parameters.minable_probability},
        {name = "lignite", amount_min = 1, amount_max = 1, probability = (1 - resource_parameters.minable_probability)},
      }
    },
    walking_sound = resource_parameters.walking_sound,
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = resource_parameters.name,
      order = resource_parameters.order,
      base_density = autoplace_parameters.base_density,
      has_starting_area_placement = autoplace_parameters.has_starting_area_placement,
      regular_rq_factor_multiplier = autoplace_parameters.regular_rq_factor_multiplier,
      starting_rq_factor_multiplier = autoplace_parameters.starting_rq_factor_multiplier,
      candidate_spot_count = autoplace_parameters.candidate_spot_count,
	  autoplace_control_name = autoplace_parameters.autoplace_control_name,
    },
    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages =
    {
      sheet =
      {
        --filename = "__base__/graphics/entity/" .. resource_parameters.name .. "/" .. resource_parameters.name .. ".png",
        filename = "__base__/graphics/entity/stone/stone.png",
		tint = resource_parameters.color,
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version =
        {
          --filename = "__base__/graphics/entity/" .. resource_parameters.name .. "/hr-" .. resource_parameters.name .. ".png",
          filename = "__base__/graphics/entity/stone/hr-stone.png",
		  tint = resource_parameters.color,
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
        }
      }
    },
    map_color = resource_parameters.map_color,
    mining_visualisation_tint = resource_parameters.mining_visualisation_tint
  }
end

--for i = 1, 25 do
data:extend({
          -- Usually earlier order takes priority, but there's some special
          -- case buried in the code about resources removing other things
          -- (though maybe there shouldn't be, and we should just place things in a different order).
          -- Trees are "a", and resources will delete trees when placed.
          -- Oil is "c" so won't be placed if another resource is already there.
          -- "d" is available for another resource, but isn't used for now.

  
 --- IRON ---

  resource_ore(
    {
      name = "iron-ore",
	  minable = "iron-ore",
	  minable_probability = 0.2,
      order = "c",
      color = Iron_Color,
      map_color = Iron_Color,
      mining_time = 1,
      walking_sound = ore_sound,
      mining_visualisation_tint = Iron_Color,
	  category = "resource-solid-tier-1",
    },
    {
      has_starting_area_placement = false,
	  base_density = 10,
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.5,
      candidate_spot_count = Iron_Spot, 
	  autoplace_control_name = "iron-ore-1",
	  base_spots_per_km2 = Iron_Base_Per_KM,
	  random_spot_size_minimum = Iron_Random_Min,
	  random_spot_size_maximum = Iron_Random_Max,
	  minimum_richness = Iron_Richness,
	  patch_set_name = "iron",
    }
  ),
  resource_ore(
    {
      name = "iron-ore-2",
	  minable = "iron-ore",
	  minable_probability = 0.5,
      order = "c",
      color = Iron_Color,
      map_color = Iron_Color,
      mining_time = 1,
      walking_sound = ore_sound,
      mining_visualisation_tint = Iron_Color,
	  category = "resource-solid-tier-1",
    },
    {
      has_starting_area_placement = true,
	  base_density = 10,
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.5,
      candidate_spot_count = Iron_Spot, 
	  autoplace_control_name = "iron-ore-2",
	  base_spots_per_km2 = Iron_Base_Per_KM,
	  random_spot_size_minimum = Iron_Random_Min,
	  random_spot_size_maximum = Iron_Random_Max,
	  minimum_richness = Iron_Richness,
	  patch_set_name = "iron",
    }
  ),
  resource_ore(
    {
      name = "iron-ore-3",
	  minable = "iron-ore",
	  minable_probability = 0.8,
      order = "c",
      color = Iron_Color,
      map_color = Iron_Color,
      mining_time = 1,
      walking_sound = ore_sound,
      mining_visualisation_tint = Iron_Color,
	  category = "resource-solid-tier-1",
    },
    {
      has_starting_area_placement = false,
	  base_density = 10,
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.5,
      candidate_spot_count = Iron_Spot, 
	  autoplace_control_name = "iron-ore-3",
	  base_spots_per_km2 = Iron_Base_Per_KM,
	  random_spot_size_minimum = Iron_Random_Min,
	  random_spot_size_maximum = Iron_Random_Max,
	  minimum_richness = Iron_Richness,
	  patch_set_name = "iron",
    }
  ),
  
  --- COPPER ---
  
  resource_ore(
    {
      name = "copper-ore",
	  minable = "copper-ore",
	  minable_probability = 0.2,
      order = "c",
      color = Copper_Color,
      map_color = Copper_Color,
      mining_time = 1,
      walking_sound = ore_sound,
      mining_visualisation_tint = Copper_Color,
	  category = "resource-solid-tier-1",
    },
    {
      has_starting_area_placement = false,
	  base_density = 10,
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.5,
      candidate_spot_count = Copper_Spot, 
	  autoplace_control_name = "copper-ore-1",
	  base_spots_per_km2 = Copper_Base_Per_KM,
	  random_spot_size_minimum = Copper_Random_Min,
	  random_spot_size_maximum = Copper_Random_Max,
	  minimum_richness = Copper_Richness,
	  patch_set_name = "copper",
    }
  ),
  resource_ore(
    {
      name = "copper-ore-2",
	  minable = "copper-ore",
	  minable_probability = 0.5,
      order = "c",
      color = Copper_Color,
      map_color = Copper_Color,
      mining_time = 1,
      walking_sound = ore_sound,
      mining_visualisation_tint = Copper_Color,
	  category = "resource-solid-tier-1",
    },
    {
      has_starting_area_placement = true,
	  base_density = 10,
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.5,
      candidate_spot_count = Copper_Spot, 
	  autoplace_control_name = "copper-ore-2",
	  base_spots_per_km2 = Copper_Base_Per_KM,
	  random_spot_size_minimum = Copper_Random_Min,
	  random_spot_size_maximum = Copper_Random_Max,
	  minimum_richness = Copper_Richness,
	  patch_set_name = "copper",
    }
  ),
  resource_ore(
    {
      name = "copper-ore-3",
	  minable = "copper-ore",
	  minable_probability = 0.8,
      order = "c",
      color = Copper_Color,
      map_color = Copper_Color,
      mining_time = 1,
      walking_sound = ore_sound,
      mining_visualisation_tint = Copper_Color,
	  category = "resource-solid-tier-1",
    },
    {
      has_starting_area_placement = false,
	  base_density = 10,
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.5,
      candidate_spot_count = Copper_Spot, 
	  autoplace_control_name = "copper-ore-3",
	  base_spots_per_km2 = Copper_Base_Per_KM,
	  random_spot_size_minimum = Copper_Random_Min,
	  random_spot_size_maximum = Copper_Random_Max,
	  minimum_richness = Copper_Richness,
	  patch_set_name = "copper",
    }
  ),
  
  --- TIN ---
  
  resource_ore(
    {
      name = "tin-ore-1",
	  minable = "tin-ore",
	  minable_probability = 0.2,
      order = "c",
      color = Tin_Color,
      map_color = Tin_Color,
      mining_time = 1,
      walking_sound = ore_sound,
      mining_visualisation_tint = Tin_Color,
	  category = "resource-solid-tier-1",
    },
    {
      has_starting_area_placement = true,
	  base_density = 10,
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.5,
      candidate_spot_count = Tin_Spot, 
	  autoplace_control_name = "tin-ore-1",
	  base_spots_per_km2 = Tin_Base_Per_KM,
	  random_spot_size_minimum = Tin_Random_Min,
	  random_spot_size_maximum = Tin_Random_Max,
	  minimum_richness = Tin_Richness,
	  patch_set_name = "tin",
    }
  ),
  resource_ore(
    {
      name = "tin-ore-2",
	  minable = "tin-ore",
	  minable_probability = 0.5,
      order = "c",
      color = Tin_Color,
      map_color = Tin_Color,
      mining_time = 1,
      walking_sound = ore_sound,
      mining_visualisation_tint = Tin_Color,
	  category = "resource-solid-tier-1",
    },
    {
      has_starting_area_placement = false,
	  base_density = 10,
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.5,
      candidate_spot_count = Tin_Spot, 
	  autoplace_control_name = "tin-ore-2",
	  base_spots_per_km2 = Tin_Base_Per_KM,
	  random_spot_size_minimum = Tin_Random_Min,
	  random_spot_size_maximum = Tin_Random_Max,
	  minimum_richness = Tin_Richness,
	  patch_set_name = "tin",
    }
  ),
  resource_ore(
    {
      name = "tin-ore-3",
	  minable = "tin-ore",
	  minable_probability = 0.8,
      order = "c",
      color = Tin_Color,
      map_color = Tin_Color,
      mining_time = 1,
      walking_sound = ore_sound,
      mining_visualisation_tint = Tin_Color,
	  category = "resource-solid-tier-1",
    },
    {
      has_starting_area_placement = false,
	  base_density = 10,
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.5,
      candidate_spot_count = Tin_Spot, 
	  autoplace_control_name = "tin-ore-3",
	  base_spots_per_km2 = Tin_Base_Per_KM,
	  random_spot_size_minimum = Tin_Random_Min,
	  random_spot_size_maximum = Tin_Random_Max,
	  minimum_richness = Tin_Richness,
	  patch_set_name = "tin",
    }
  ),
  
  --- STONES ---
  
  resource(
    {
      name = "stone",
	  minable = "limestone",
	  minable_probability = 1,
      order = "b",
      color = {141, 91, 74},
      map_color = {141, 91, 74},
      mining_time = 1,
      walking_sound = ore_sound,
      mining_visualisation_tint = {r = 0.984, g = 0.883, b = 0.646, a = 1.000}, -- #fae1a4ff
	  category = "resource-solid-tier-0",
    },
    {
      has_starting_area_placement = true,
      base_density = 4,
      regular_rq_factor_multiplier = 1.0,
      starting_rq_factor_multiplier = 1.1,
	  autoplace_control_name = "stone",
    }
  ),
  resource(
    {
      name = "quartzite",
	  minable = "quartzite",
	  minable_probability = 1,
      order = "b",
      color = {170, 170, 170},
      map_color = {170, 170, 170},
      mining_time = 2,
      walking_sound = ore_sound,
      mining_visualisation_tint = {r = 0.984, g = 0.883, b = 0.646, a = 1.000}, -- #fae1a4ff
	  category = "resource-solid-tier-1",
    },
    {
      has_starting_area_placement = false,
      base_density = 4,
      regular_rq_factor_multiplier = 1.0,
      starting_rq_factor_multiplier = 1.1,
	  autoplace_control_name = "quartzite",
    }
  ),
  resource(
    {
      name = "granite",
	  minable = "granite",
	  minable_probability = 1,
      order = "b",
      color = {146, 135, 41},
      map_color = {146, 135, 41},
      mining_time = 5,
      walking_sound = ore_sound,
      mining_visualisation_tint = {r = 0.984, g = 0.883, b = 0.646, a = 1.000}, -- #fae1a4ff
	  category = "resource-solid-tier-2",
    },
    {
      has_starting_area_placement = false,
      base_density = 4,
      regular_rq_factor_multiplier = 1.0,
      starting_rq_factor_multiplier = 1.1,
	  autoplace_control_name = "granite",
    }
  ),
  resource(
    {
      name = "sandstone",
	  minable = "sandstone",
	  minable_probability = 1,
      order = "b",
      color = {242, 244, 212},
      map_color = {242, 244, 212},
      mining_time = 2.5,
      walking_sound = ore_sound,
      mining_visualisation_tint = {r = 0.984, g = 0.883, b = 0.646, a = 1.000}, -- #fae1a4ff
	  category = "resource-solid-tier-1",
    },
    {
      has_starting_area_placement = true,
      base_density = 4,
      regular_rq_factor_multiplier = 1.0,
      starting_rq_factor_multiplier = 1.1,
	  autoplace_control_name = "sandstone",
    }
  ),
  resource(
    {
      name = "uranium-ore",
	  minable = "uranium-ore",
	  minable_probability = 0.1,
      order = "b",
      color = {10, 250, 10},
      map_color = {10, 250, 10},
      mining_time = 12.5,
      walking_sound = ore_sound,
      mining_visualisation_tint = {r = 0.05, g = 0.9, b = 0.05, a = 1.000}, -- #fae1a4ff
	  category = "resource-solid-tier-2",
    },
    {
      has_starting_area_placement = false,
      base_density = 1,
      regular_rq_factor_multiplier = 1.0,
      starting_rq_factor_multiplier = 1.1,
	  autoplace_control_name = "uranium-ore",
    }
  ),
  
 ---------- TREES ----------
  
  resource(
    {
      name = "treefarm",
	  minable = "wood",
	  minable_probability = 1,
	  amount_max = 30,
      order = "c",
      color = {0.690, 0.611, 0.427},
      map_color = {0.690, 0.611, 0.427},
      mining_time = 120,
      walking_sound = ore_sound,
      mining_visualisation_tint = {r = 0.984, g = 0.883, b = 0.646, a = 1.000}, -- #fae1a4ff
	  category = "resource-trees",
    },
    {
      has_starting_area_placement = true,
      base_density = 4,
      regular_rq_factor_multiplier = 1.0,
      starting_rq_factor_multiplier = 1.1,
	  autoplace_control_name = "treefarm",
    }
  ),
  
  --- COAL ---
  
  resource_coal(
    {
      name = "coal",
	  minable = "coal",
	  minable_probability = 0.30,
      order = "c",
      color = {0, 0, 0},
      map_color = {0, 0, 0},
      mining_time = 1,
      walking_sound = ore_sound,
      mining_visualisation_tint = {r = 0.465, g = 0.465, b = 0.465, a = 1.000}, -- #767676ff
	  category = "resource-solid-tier-1",
    },
    {
      has_starting_area_placement = true,
      base_density = 8,
      regular_rq_factor_multiplier = 1.0,
      starting_rq_factor_multiplier = 1.1,
	  autoplace_control_name = "coal-1",
    }
  ),
  resource_coal(
    {
      name = "coal-2",
	  minable = "coal",
	  minable_probability = 0.60,
      order = "c",
      color = {0, 0, 0},
      map_color = {0, 0, 0},
      mining_time = 1,
      walking_sound = ore_sound,
      mining_visualisation_tint = {r = 0.465, g = 0.465, b = 0.465, a = 1.000}, -- #767676ff
	  category = "resource-solid-tier-1",
    },
    {
      has_starting_area_placement = false,
      base_density = 8,
      regular_rq_factor_multiplier = 1.0,
      starting_rq_factor_multiplier = 1.1,
	  autoplace_control_name = "coal-2",
    }
  ),
  resource_coal(
    {
      name = "coal-3",
	  minable = "coal",
	  minable_probability = 0.90,
      order = "c",
      color = {0, 0, 0},
      map_color = {0, 0, 0},
      mining_time = 1,
      walking_sound = ore_sound,
      mining_visualisation_tint = {r = 0.465, g = 0.465, b = 0.465, a = 1.000}, -- #767676ff
	  category = "resource-solid-tier-1",
    },
    {
      has_starting_area_placement = false,
      base_density = 8,
      regular_rq_factor_multiplier = 1.0,
      starting_rq_factor_multiplier = 1.1,
	  autoplace_control_name = "coal-3",
    }
  ),
})

data:extend(
{
  {
    type = "resource",
    name = "natural-gas",
    icon = "__base__/graphics/icons/crude-oil-resource.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral"},
    category = "resource-gas",
    order="a-b-a",
    infinite = true,
    highlight = true,
    minimum = 60000,
    normal = 300000,
    infinite_depletion_amount = 10,
    resource_patch_search_radius = 12,
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    minable =
    {
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "natural-gas",
          amount_min = 5,
          amount_max = 25,
          probability = 1
        }
      }
    },
    --walking_sound = sounds.oil,
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "natural-gas",
      order = "c", -- Other resources are "b"; oil won't get placed if something else is already there.
      base_density = 8.2,
      base_spots_per_km2 = 1.8,
      random_probability = 1/48,
      random_spot_size_minimum = 1,
      random_spot_size_maximum = 1, -- don't randomize spot size
      additional_richness = 220000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1,
	  autoplace_control_name = "natural-gas",
    },
    stage_counts = {0},
    stages =
    {
      sheet =
      {
        filename = DyDs_path_entity.."natural-gas.png",
        priority = "extra-high",
        width = 51,
        height = 60,
        frame_count = 1,
        variation_count = 1,
        shift = util.by_pixel(0, -2),
      }
    },
    map_color = {0.2, 0.2, 0.77},
    map_grid = false

  },
  {
    type = "resource",
    name = "crude-oil",
    icon = "__base__/graphics/icons/crude-oil-resource.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral"},
    category = "resource-oil",
    order="a-b-a",
    infinite = true,
    highlight = true,
    minimum = 60000,
    normal = 300000,
    infinite_depletion_amount = 10,
    resource_patch_search_radius = 12,
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    minable =
    {
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "crude-oil",
          amount_min = 5,
          amount_max = 25,
          probability = 1
        }
      }
    },
    --walking_sound = sounds.oil,
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "crude-oil",
      order = "c", -- Other resources are "b"; oil won't get placed if something else is already there.
      base_density = 8.2,
      base_spots_per_km2 = 1.8,
      random_probability = 1/48,
      random_spot_size_minimum = 1,
      random_spot_size_maximum = 1, -- don't randomize spot size
      additional_richness = 220000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1,
	  autoplace_control_name = "crude-oil",
    },
    stage_counts = {0},
    stages =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/crude-oil/crude-oil.png",
        priority = "extra-high",
        width = 74,
        height = 60,
        frame_count = 4,
        variation_count = 1,
        shift = util.by_pixel(0, -2),
        hr_version =
        {
          filename = "__base__/graphics/entity/crude-oil/hr-crude-oil.png",
          priority = "extra-high",
          width = 148,
          height = 120,
          frame_count = 4,
          variation_count = 1,
          shift = util.by_pixel(0, -2),
          scale = 0.5
        }
      }
    },
    map_color = {0.8, 0.8, 0.8},
    map_grid = false

  },
})

data.raw.resource.treefarm.infinite = true
data.raw.resource.treefarm.highlight = false
data.raw.resource.treefarm.minimum = 600
data.raw.resource.treefarm.normal = 600
data.raw.resource.treefarm.infinite_depletion_amount = 1
data.raw.resource.treefarm.minable =
{
  mining_time = 120,
  required_fluid = "water",
  fluid_amount = 500,
  results =
  {
    {
      type = "item",
      name = "wood",
      amount_min = 5,
      amount_max = 30,
      probability = 1
    },
    {
      type = "item",
      name = "carrot",
      amount_min = 1,
      amount_max = 5,
      probability = 0.4
    },
  }
}

data.raw.resource.quartzite.minable.results = {
    {name = "quartzite", amount_min = 1, amount_max = 2, probability = 1},
    {name = "limestone", amount_min = 1, amount_max = 3, probability = 0.35},
}

data.raw.resource.granite.minable.results = {
    {name = "granite", amount_min = 1, amount_max = 2, probability = 1},
    {name = "limestone", amount_min = 1, amount_max = 6, probability = 0.25},
    {name = "ilmenite", amount_min = 1, amount_max = 1, probability = 0.05},
    {name = "biotite", amount_min = 1, amount_max = 1, probability = 0.05},
}

data.raw.resource.sandstone.minable.results = {
    {name = "sandstone", amount_min = 1, amount_max = 2, probability = 1},
    {name = "limestone", amount_min = 2, amount_max = 4, probability = 0.25},
    {name = "sand", amount_min = 1, amount_max = 10, probability = 0.05},
}

data.raw.resource.stone.minable.results = {
    {name = "limestone", amount_min = 1, amount_max = 9, probability = 1},
    {name = "sandstone", amount_min = 0, amount_max = 4, probability = 0.25},
    {name = "granite", amount_min = 0, amount_max = 4, probability = 0.1},
    {name = "quartzite", amount_min = 0, amount_max = 4, probability = 0.15},
    {name = "sand", amount_min = 0, amount_max = 10, probability = 0.005},
    {name = "ilmenite", amount_min = 0, amount_max = 1, probability = 0.0015},
    {name = "biotite", amount_min = 0, amount_max = 1, probability = 0.0015},
}