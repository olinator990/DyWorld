

data:extend({
  {
    type = "ammo",
    name = "9mm-bullet",
    icon = DyDs_path_icon.."bullet-9mm.png",
    icon_size = 64, icon_mipmaps = 4,
    ammo_type =
    {
      category = "900mm",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "instant",
              source_effects =
              {
                {
                  type = "create-explosion",
                  entity_name = "explosion-gunshot"
                }
              },
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit",
                  offsets = {{0, 1}},
                  offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
                },
                {
                  type = "damage",
                  damage = { amount = 500 , type = "physical"}
                }
              }
            }
          }
        }
      }
    },
    magazine_size = 1,
    subgroup = DyDs.."ammo-bullet-basic",
    order = "9mm",
    stack_size = 1000,
  },
  {
    type = "recipe",
    name = "9mm-bullet",
	category = "assembling-tier-1",
    normal =
    {
      ingredients =
      {
        {type = "item", name = "charcoal", amount = 1},
        {type = "item", name = "limestone", amount = 3},
      },
      result = "9mm-bullet",
	  result_count = 5,
	  energy_required = 1,
	  enabled = false,
    },
    expensive =
    {
      ingredients =
      {
        {type = "item", name = "charcoal", amount = 3},
        {type = "item", name = "limestone", amount = 10},
      },
      result = "9mm-bullet",
	  result_count = 3,
	  energy_required = 5,
	  enabled = false,
    },
  },
})