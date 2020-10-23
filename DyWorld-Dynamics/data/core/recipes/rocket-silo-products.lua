



data:extend({
	----- Satellite -----
  {
    type = "recipe",
    name = "satellite",
	category = "assembling-tier-2",
    normal =
    {
      ingredients =
      {
        {type = "item", name = "steel-plate", amount = 10},
        {type = "item", name = "aluminium-plate", amount = 15},
        {type = "item", name = "magnesium-plate", amount = 5},
        {type = "item", name = "control-board-2", amount = 2},
        {type = "item", name = "plastic-bar", amount = 10},
        {type = "item", name = "engine-unit", amount = 2},
        {type = "fluid", name = "petroleum-gas", amount = 50},
      },
      result = "satellite",
	  enabled = false,
	  energy_required = 15,
    },
    expensive =
    {
      ingredients =
      {
        {type = "item", name = "steel-plate", amount = 10*5},
        {type = "item", name = "aluminium-plate", amount = 15*5},
        {type = "item", name = "magnesium-plate", amount = 5*5},
        {type = "item", name = "control-board-2", amount = 2*5},
        {type = "item", name = "plastic-bar", amount = 10*5},
        {type = "item", name = "engine-unit", amount = 2*5},
        {type = "fluid", name = "petroleum-gas", amount = 50*5},
      },
      result = "satellite",
	  enabled = false,
	  energy_required = 250,
    },
  },
	----- Titanium Ores -----
  {
    type = "recipe",
    name = "asteroid-miner-titanium",
	category = "assembling-tier-2",
    normal =
    {
      ingredients =
      {
        {type = "item", name = "titanium-plate", amount = 25},
        {type = "item", name = "basic-electric-drill", amount = 5},
        {type = "item", name = "satellite", amount = 2},
      },
      result = "asteroid-miner-titanium",
	  enabled = false,
	  energy_required = 35,
    },
    expensive =
    {
      ingredients =
      {
        {type = "item", name = "titanium-plate", amount = 25*5},
        {type = "item", name = "basic-electric-drill", amount = 5*5},
        {type = "item", name = "satellite", amount = 2*2},
      },
      result = "asteroid-miner-titanium",
	  enabled = false,
	  energy_required = 350,
    },
  },
	----- Iron Ores -----
  {
    type = "recipe",
    name = "asteroid-miner-iron",
	category = "assembling-tier-2",
    normal =
    {
      ingredients =
      {
        {type = "item", name = "titanium-plate", amount = 10},
        {type = "item", name = "basic-electric-drill", amount = 2},
        {type = "item", name = "satellite", amount = 1},
        {type = "item", name = "iron-ore", amount = 5},
      },
      result = "asteroid-miner-iron",
	  enabled = false,
	  energy_required = 25,
    },
    expensive =
    {
      ingredients =
      {
        {type = "item", name = "titanium-plate", amount = 10*5},
        {type = "item", name = "basic-electric-drill", amount = 2*5},
        {type = "item", name = "satellite", amount = 1*2},
        {type = "item", name = "iron-ore", amount = 5*5},
      },
      result = "asteroid-miner-iron",
	  enabled = false,
	  energy_required = 250,
    },
  },
	----- Copper Ores -----
  {
    type = "recipe",
    name = "asteroid-miner-copper",
	category = "assembling-tier-2",
    normal =
    {
      ingredients =
      {
        {type = "item", name = "titanium-plate", amount = 10},
        {type = "item", name = "basic-electric-drill", amount = 2},
        {type = "item", name = "satellite", amount = 1},
        {type = "item", name = "copper-ore", amount = 5},
      },
      result = "asteroid-miner-copper",
	  enabled = false,
	  energy_required = 25,
    },
    expensive =
    {
      ingredients =
      {
        {type = "item", name = "titanium-plate", amount = 10*5},
        {type = "item", name = "basic-electric-drill", amount = 2*5},
        {type = "item", name = "satellite", amount = 1*2},
        {type = "item", name = "copper-ore", amount = 5*5},
      },
      result = "asteroid-miner-copper",
	  enabled = false,
	  energy_required = 250,
    },
  },
	----- Tin Ores -----
  {
    type = "recipe",
    name = "asteroid-miner-tin",
	category = "assembling-tier-2",
    normal =
    {
      ingredients =
      {
        {type = "item", name = "titanium-plate", amount = 10},
        {type = "item", name = "basic-electric-drill", amount = 2},
        {type = "item", name = "satellite", amount = 1},
        {type = "item", name = "tin-ore", amount = 5},
      },
      result = "asteroid-miner-tin",
	  enabled = false,
	  energy_required = 25,
    },
    expensive =
    {
      ingredients =
      {
        {type = "item", name = "titanium-plate", amount = 10*5},
        {type = "item", name = "basic-electric-drill", amount = 2*5},
        {type = "item", name = "satellite", amount = 1*2},
        {type = "item", name = "tin-ore", amount = 5*5},
      },
      result = "asteroid-miner-tin",
	  enabled = false,
	  energy_required = 250,
    },
  },
	----- Stones -----
  {
    type = "recipe",
    name = "asteroid-miner-stone",
	category = "assembling-tier-2",
    normal =
    {
      ingredients =
      {
        {type = "item", name = "titanium-plate", amount = 10},
        {type = "item", name = "basic-electric-drill", amount = 2},
        {type = "item", name = "satellite", amount = 1},
        {type = "item", name = "limestone", amount = 5},
      },
      result = "asteroid-miner-stone",
	  enabled = false,
	  energy_required = 25,
    },
    expensive =
    {
      ingredients =
      {
        {type = "item", name = "titanium-plate", amount = 10*5},
        {type = "item", name = "basic-electric-drill", amount = 2*5},
        {type = "item", name = "satellite", amount = 1*2},
        {type = "item", name = "limestone", amount = 5*5},
      },
      result = "asteroid-miner-stone",
	  enabled = false,
	  energy_required = 250,
    },
  },
	----- Coals -----
  {
    type = "recipe",
    name = "asteroid-miner-coal-1",
	category = "assembling-tier-2",
    normal =
    {
      ingredients =
      {
        {type = "item", name = "titanium-plate", amount = 10},
        {type = "item", name = "basic-electric-drill", amount = 2},
        {type = "item", name = "satellite", amount = 1},
        {type = "item", name = "coal", amount = 5},
      },
      result = "asteroid-miner-coal-1",
	  enabled = false,
	  energy_required = 25,
    },
    expensive =
    {
      ingredients =
      {
        {type = "item", name = "titanium-plate", amount = 10*5},
        {type = "item", name = "basic-electric-drill", amount = 2*5},
        {type = "item", name = "satellite", amount = 1*2},
        {type = "item", name = "coal", amount = 5*5},
      },
      result = "asteroid-miner-coal-1",
	  enabled = false,
	  energy_required = 250,
    },
  },
  {
    type = "recipe",
    name = "asteroid-miner-coal-2",
	category = "assembling-tier-2",
    normal =
    {
      ingredients =
      {
        {type = "item", name = "titanium-plate", amount = 10},
        {type = "item", name = "basic-electric-drill", amount = 2},
        {type = "item", name = "satellite", amount = 1},
        {type = "item", name = "coal", amount = 5},
      },
      result = "asteroid-miner-coal-2",
	  enabled = false,
	  energy_required = 25,
    },
    expensive =
    {
      ingredients =
      {
        {type = "item", name = "titanium-plate", amount = 10*5},
        {type = "item", name = "basic-electric-drill", amount = 2*5},
        {type = "item", name = "satellite", amount = 1*2},
        {type = "item", name = "coal", amount = 5*5},
      },
      result = "asteroid-miner-coal-2",
	  enabled = false,
	  energy_required = 250,
    },
  },
  {
    type = "recipe",
    name = "asteroid-miner-coal-3",
	category = "assembling-tier-2",
    normal =
    {
      ingredients =
      {
        {type = "item", name = "titanium-plate", amount = 10},
        {type = "item", name = "basic-electric-drill", amount = 2},
        {type = "item", name = "satellite", amount = 1},
        {type = "item", name = "coal", amount = 5},
      },
      result = "asteroid-miner-coal-3",
	  enabled = false,
	  energy_required = 25,
    },
    expensive =
    {
      ingredients =
      {
        {type = "item", name = "titanium-plate", amount = 10*5},
        {type = "item", name = "basic-electric-drill", amount = 2*5},
        {type = "item", name = "satellite", amount = 1*2},
        {type = "item", name = "coal", amount = 5*5},
      },
      result = "asteroid-miner-coal-3",
	  enabled = false,
	  energy_required = 250,
    },
  },
})