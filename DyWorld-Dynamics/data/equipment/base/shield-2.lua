

local DyWorld_Prototype_1a = DyDs_CopyPrototype("energy-shield-equipment", "energy-shield-equipment", "energy-shield-equipment-vehicle-1", true)
local DyWorld_Prototype_2a = DyDs_CopyPrototype("energy-shield-equipment", "energy-shield-mk2-equipment", "energy-shield-mk2-equipment-vehicle-1", true)
local DyWorld_Prototype_3a = DyDs_CopyPrototype("energy-shield-equipment", "energy-shield-mk3-equipment", "energy-shield-mk3-equipment-vehicle-1", true)
local DyWorld_Prototype_4a = DyDs_CopyPrototype("energy-shield-equipment", "energy-shield-mk4-equipment", "energy-shield-mk4-equipment-vehicle-1", true)
local DyWorld_Prototype_5a = DyDs_CopyPrototype("energy-shield-equipment", "energy-shield-mk5-equipment", "energy-shield-mk5-equipment-vehicle-1", true)
local DyWorld_Prototype_6a = DyDs_CopyPrototype("energy-shield-equipment", "energy-shield-mk6-equipment", "energy-shield-mk6-equipment-vehicle-1", true)
local DyWorld_Prototype_1b = DyDs_CopyPrototype("item", "energy-shield-equipment", "energy-shield-equipment-vehicle-1", true)
local DyWorld_Prototype_2b = DyDs_CopyPrototype("item", "energy-shield-mk2-equipment", "energy-shield-mk2-equipment-vehicle-1", true)
local DyWorld_Prototype_3b = DyDs_CopyPrototype("item", "energy-shield-mk3-equipment", "energy-shield-mk3-equipment-vehicle-1", true)
local DyWorld_Prototype_4b = DyDs_CopyPrototype("item", "energy-shield-mk4-equipment", "energy-shield-mk4-equipment-vehicle-1", true)
local DyWorld_Prototype_5b = DyDs_CopyPrototype("item", "energy-shield-mk5-equipment", "energy-shield-mk5-equipment-vehicle-1", true)
local DyWorld_Prototype_6b = DyDs_CopyPrototype("item", "energy-shield-mk6-equipment", "energy-shield-mk6-equipment-vehicle-1", true)
local DyWorld_Prototype_1c = DyDs_CopyPrototype("recipe", "energy-shield-equipment", "energy-shield-equipment-vehicle-1", true)
local DyWorld_Prototype_2c = DyDs_CopyPrototype("recipe", "energy-shield-mk2-equipment", "energy-shield-mk2-equipment-vehicle-1", true)
local DyWorld_Prototype_3c = DyDs_CopyPrototype("recipe", "energy-shield-mk3-equipment", "energy-shield-mk3-equipment-vehicle-1", true)
local DyWorld_Prototype_4c = DyDs_CopyPrototype("recipe", "energy-shield-mk4-equipment", "energy-shield-mk4-equipment-vehicle-1", true)
local DyWorld_Prototype_5c = DyDs_CopyPrototype("recipe", "energy-shield-mk5-equipment", "energy-shield-mk5-equipment-vehicle-1", true)
local DyWorld_Prototype_6c = DyDs_CopyPrototype("recipe", "energy-shield-mk6-equipment", "energy-shield-mk6-equipment-vehicle-1", true)

DyWorld_Prototype_1a.max_shield_value = 2000
DyWorld_Prototype_1a.energy_per_shield = "20kJ"
DyWorld_Prototype_1a.categories = {"dy-vehicle-weak"}
DyWorld_Prototype_1a.energy_source = {
      type = "electric",
      buffer_capacity = (2000 * 20).."kJ",
      input_flow_limit = math.floor((2000 / 5) * 20).."kW",
      usage_priority = "primary-input"
    }
DyWorld_Prototype_1b.subgroup = DyDs.."equipment-vehicle-shield"
DyWorld_Prototype_1b.order = "1a"
DyWorld_Prototype_1c.normal.ingredients = {{type = "item", name = "energy-shield-equipment", amount = 10}}
DyWorld_Prototype_1c.normal.energy_required = 60

DyWorld_Prototype_2a.max_shield_value = 5000
DyWorld_Prototype_2a.energy_per_shield = "20kJ"
DyWorld_Prototype_2a.categories = {"dy-vehicle-weak"}
DyWorld_Prototype_2a.energy_source = {
      type = "electric",
      buffer_capacity = (5000 * 20).."kJ",
      input_flow_limit = math.floor((5000 / 5) * 20).."kW",
      usage_priority = "primary-input"
    }
DyWorld_Prototype_2b.subgroup = DyDs.."equipment-vehicle-shield"
DyWorld_Prototype_2b.order = "2a"
DyWorld_Prototype_2c.normal.ingredients = {{type = "item", name = "energy-shield-mk2-equipment", amount = 10}}
DyWorld_Prototype_2c.normal.energy_required = 120

DyWorld_Prototype_3a.max_shield_value = 10000
DyWorld_Prototype_3a.energy_per_shield = "20kJ"
DyWorld_Prototype_3a.categories = {"dy-vehicle-weak"}
DyWorld_Prototype_3a.energy_source = {
      type = "electric",
      buffer_capacity = (10000 * 20).."kJ",
      input_flow_limit = math.floor((10000 / 5) * 20).."kW",
      usage_priority = "primary-input"
    }
DyWorld_Prototype_3b.subgroup = DyDs.."equipment-vehicle-shield"
DyWorld_Prototype_3b.order = "3a"
DyWorld_Prototype_3c.normal.ingredients = {{type = "item", name = "energy-shield-mk3-equipment", amount = 10}}
DyWorld_Prototype_3c.normal.energy_required = 180

DyWorld_Prototype_4a.max_shield_value = 20000
DyWorld_Prototype_4a.energy_per_shield = "20kJ"
DyWorld_Prototype_4a.categories = {"dy-vehicle-weak"}
DyWorld_Prototype_4a.energy_source = {
      type = "electric",
      buffer_capacity = (20000 * 20).."kJ",
      input_flow_limit = math.floor((20000 / 5) * 20).."kW",
      usage_priority = "primary-input"
    }
DyWorld_Prototype_4b.subgroup = DyDs.."equipment-vehicle-shield"
DyWorld_Prototype_4b.order = "4a"
DyWorld_Prototype_4c.normal.ingredients = {{type = "item", name = "energy-shield-mk4-equipment", amount = 10}}
DyWorld_Prototype_4c.normal.energy_required = 250

DyWorld_Prototype_5a.max_shield_value = 50000
DyWorld_Prototype_5a.energy_per_shield = "20kJ"
DyWorld_Prototype_5a.categories = {"dy-vehicle-weak"}
DyWorld_Prototype_5a.energy_source = {
      type = "electric",
      buffer_capacity = (50000 * 20).."kJ",
      input_flow_limit = math.floor((50000 / 5) * 20).."kW",
      usage_priority = "primary-input"
    }
DyWorld_Prototype_5b.subgroup = DyDs.."equipment-vehicle-shield"
DyWorld_Prototype_5b.order = "5a"
DyWorld_Prototype_5c.normal.ingredients = {{type = "item", name = "energy-shield-mk5-equipment", amount = 10}}
DyWorld_Prototype_5c.normal.energy_required = 500

DyWorld_Prototype_6a.max_shield_value = 100000
DyWorld_Prototype_6a.energy_per_shield = "20kJ"
DyWorld_Prototype_6a.categories = {"dy-vehicle-weak"}
DyWorld_Prototype_6a.energy_source = {
      type = "electric",
      buffer_capacity = (100000 * 20).."kJ",
      input_flow_limit = math.floor((100000 / 5) * 20).."kW",
      usage_priority = "primary-input"
    }
DyWorld_Prototype_6b.subgroup = DyDs.."equipment-vehicle-shield"
DyWorld_Prototype_6b.order = "6a"
DyWorld_Prototype_6c.normal.ingredients = {{type = "item", name = "energy-shield-mk6-equipment", amount = 10}}
DyWorld_Prototype_6c.normal.energy_required = 1000


data:extend({
  DyWorld_Prototype_1a, DyWorld_Prototype_1b, DyWorld_Prototype_1c,
  DyWorld_Prototype_2a, DyWorld_Prototype_2b, DyWorld_Prototype_2c,
  DyWorld_Prototype_3a, DyWorld_Prototype_3b, DyWorld_Prototype_3c,
  DyWorld_Prototype_4a, DyWorld_Prototype_4b, DyWorld_Prototype_4c,
  DyWorld_Prototype_5a, DyWorld_Prototype_5b, DyWorld_Prototype_5c,
  DyWorld_Prototype_6a, DyWorld_Prototype_6b, DyWorld_Prototype_6c,
})

DyWorld_ATTA("energy-shield-equipment-vehicle-1", {"warfare-1"})
DyWorld_ATTA("energy-shield-mk2-equipment-vehicle-1", {"warfare-3"})
DyWorld_ATTA("energy-shield-mk3-equipment-vehicle-1", {"warfare-5"})
DyWorld_ATTA("energy-shield-mk4-equipment-vehicle-1", {"warfare-7"})
DyWorld_ATTA("energy-shield-mk5-equipment-vehicle-1", {"warfare-9"})
DyWorld_ATTA("energy-shield-mk6-equipment-vehicle-1", {"warfare-11"})