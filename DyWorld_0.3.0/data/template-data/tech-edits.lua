require "data/prefix"
Resource_Water = settings.startup["DyWorld-resource-water"].value

Data_Table_Tech_PreReq = {
	{	Name = "stone-walls", Tech = 2},
	{	Name = "railway", Tech = 3},
	{	Name = "rail-signals", Tech = 3},
	{	Name = "fluid-wagon", Tech = 3},
	{	Name = "advanced-material-processing", Tech = 3},
	{	Name = "advanced-material-processing-2", Tech = 4},
	{	Name = "automation", Tech = 3},
	{	Name = "automation-2", Tech = 3},
	{	Name = "automation-3", Tech = 5},
	{	Name = "optics", Tech = 3},
	{	Name = "toolbelt", Tech = 3},
	{	Name = "electronics", Tech = 3},
	{	Name = "advanced-electronics", Tech = 3},
	{	Name = "advanced-electronics-2", Tech = 4},
	{	Name = "circuit-network", Tech = 3},
	{	Name = "explosives", Tech = 3},
	{	Name = "logistics", Tech = 3},
	{	Name = "logistics-2", Tech = 3},
	{	Name = "logistics-3", Tech = 5},
	{	Name = "laser", Tech = 3},
	{	Name = "solar-energy", Tech = 3},
	{	Name = "turrets", Tech = 3},
	{	Name = "laser-turrets", Tech = 3},
	{	Name = "gates", Tech = 3},
	{	Name = "engine", Tech = 3},
	{	Name = "electric-engine", Tech = 3},
	{	Name = "battery", Tech = 3},
	{	Name = "steel-processing", Tech = 3},
	{	Name = "concrete", Tech = 3},
	{	Name = "electric-energy-accumulators-1", Tech = 3},
	{	Name = "electric-energy-distribution-1", Tech = 3},
	{	Name = "electric-energy-distribution-2", Tech = 4},
	{	Name = "flying", Tech = 3},
	{	Name = "robotics", Tech = 3},
	{	Name = "construction-robotics", Tech = 3},
	{	Name = "logistic-robotics", Tech = 3},
	{	Name = "logistic-system", Tech = 5},
	{	Name = "personal-roboport-equipment", Tech = 4},
	{	Name = "personal-roboport-equipment-2", Tech = 5},
	{	Name = "character-logistic-slots-1", Tech = 3},
	{	Name = "character-logistic-slots-2", Tech = 3},
	{	Name = "character-logistic-slots-3", Tech = 4},
	{	Name = "character-logistic-slots-4", Tech = 5},
	{	Name = "character-logistic-slots-5", Tech = 5},
	{	Name = "character-logistic-slots-6", Tech = 6},
	{	Name = "character-logistic-trash-slots-1", Tech = 3},
	{	Name = "character-logistic-trash-slots-2", Tech = 4},
	{	Name = "worker-robots-speed-1", Tech = 4},
	{	Name = "worker-robots-speed-2", Tech = 4},
	{	Name = "worker-robots-speed-3", Tech = 5},
	{	Name = "worker-robots-speed-4", Tech = 5},
	{	Name = "worker-robots-speed-5", Tech = 6},
	{	Name = "worker-robots-speed-6", Tech = 7},
	{	Name = "auto-character-logistic-trash-slots", Tech = 4},
	{	Name = "mining-productivity-1", Tech = 3},
	{	Name = "mining-productivity-4", Tech = 4},
	{	Name = "mining-productivity-8", Tech = 5},
	{	Name = "mining-productivity-12", Tech = 6},
	{	Name = "mining-productivity-16", Tech = 7},
	{	Name = "worker-robots-storage-1", Tech = 4},
	{	Name = "worker-robots-storage-2", Tech = 5},
	{	Name = "worker-robots-storage-3", Tech = 6},
	{	Name = "research-speed-1", Tech = 3},
	{	Name = "research-speed-2", Tech = 3},
	{	Name = "research-speed-3", Tech = 4},
	{	Name = "research-speed-4", Tech = 4},
	{	Name = "research-speed-5", Tech = 5},
	{	Name = "research-speed-6", Tech = 6},
	{	Name = "stack-inserter", Tech = 3},
	{	Name = "inserter-capacity-bonus-1", Tech = 3},
	{	Name = "inserter-capacity-bonus-2", Tech = 3},
	{	Name = "inserter-capacity-bonus-3", Tech = 4},
	{	Name = "inserter-capacity-bonus-4", Tech = 5},
	{	Name = "inserter-capacity-bonus-5", Tech = 5},
	{	Name = "inserter-capacity-bonus-6", Tech = 5},
	{	Name = "inserter-capacity-bonus-7", Tech = 6},
	{	Name = "oil-processing", Tech = 3},
	{	Name = "fluid-handling", Tech = 3},
	{	Name = "advanced-oil-processing", Tech = 4},
	{	Name = "coal-liquefaction", Tech = 5},
	{	Name = "sulfur-processing", Tech = 3},
	{	Name = "plastics", Tech = 3},
	{	Name = "military", Tech = 3},
	{	Name = "military-2", Tech = 3},
	{	Name = "military-3", Tech = 4},
	{	Name = "military-4", Tech = 6},
	{	Name = "atomic-bomb", Tech = 6},
	{	Name = "uranium-ammo", Tech = 6},
	{	Name = "cluster-grenade", Tech = 6},
	{	Name = "flammables", Tech = 3},
	{	Name = "flamethrower", Tech = 3},
	{	Name = "automobilism", Tech = 3},
	{	Name = "tanks", Tech = 4},
	{	Name = "land-mine", Tech = 3},
	{	Name = "rocketry", Tech = 3},
	{	Name = "explosive-rocketry", Tech = 4},
	{	Name = "rocket-damage-1", Tech = 3},
	{	Name = "rocket-damage-2", Tech = 3},
	{	Name = "rocket-damage-3", Tech = 4},
	{	Name = "rocket-damage-4", Tech = 4},
	{	Name = "rocket-damage-5", Tech = 4},
	{	Name = "rocket-damage-6", Tech = 6},
	{	Name = "rocket-damage-7", Tech = 7},
	{	Name = "rocket-speed-1", Tech = 3},
	{	Name = "rocket-speed-2", Tech = 3},
	{	Name = "rocket-speed-3", Tech = 4},
	{	Name = "rocket-speed-4", Tech = 4},
	{	Name = "rocket-speed-5", Tech = 4},
	{	Name = "rocket-speed-6", Tech = 6},
	{	Name = "rocket-speed-7", Tech = 6},
	{	Name = "cannon-shell-damage-1", Tech = 4},
	{	Name = "cannon-shell-damage-2", Tech = 4},
	{	Name = "cannon-shell-damage-3", Tech = 4},
	{	Name = "cannon-shell-damage-4", Tech = 6},
	{	Name = "cannon-shell-damage-5", Tech = 6},
	{	Name = "cannon-shell-damage-6", Tech = 7},
	{	Name = "cannon-shell-speed-1", Tech = 4},
	{	Name = "cannon-shell-speed-2", Tech = 4},
	{	Name = "cannon-shell-speed-3", Tech = 4},
	{	Name = "cannon-shell-speed-4", Tech = 6},
	{	Name = "cannon-shell-speed-5", Tech = 6},
	{	Name = "bullet-damage-1", Tech = 3},
	{	Name = "bullet-damage-2", Tech = 3},
	{	Name = "bullet-damage-3", Tech = 3},
	{	Name = "bullet-damage-4", Tech = 3},
	{	Name = "bullet-damage-5", Tech = 4},
	{	Name = "bullet-damage-6", Tech = 6},
	{	Name = "bullet-damage-7", Tech = 7},
	{	Name = "bullet-speed-1", Tech = 3},
	{	Name = "bullet-speed-2", Tech = 3},
	{	Name = "bullet-speed-3", Tech = 3},
	{	Name = "bullet-speed-4", Tech = 3},
	{	Name = "bullet-speed-5", Tech = 4},
	{	Name = "bullet-speed-6", Tech = 6},
	{	Name = "grenade-damage-1", Tech = 3},
	{	Name = "grenade-damage-2", Tech = 3},
	{	Name = "grenade-damage-3", Tech = 3},
	{	Name = "grenade-damage-4", Tech = 4},
	{	Name = "grenade-damage-5", Tech = 4},
	{	Name = "grenade-damage-6", Tech = 6},
	{	Name = "grenade-damage-7", Tech = 7},
	{	Name = "laser-turret-damage-1", Tech = 3},
	{	Name = "laser-turret-damage-2", Tech = 3},
	{	Name = "laser-turret-damage-3", Tech = 4},
	{	Name = "laser-turret-damage-4", Tech = 4},
	{	Name = "laser-turret-damage-5", Tech = 6},
	{	Name = "laser-turret-damage-6", Tech = 6},
	{	Name = "laser-turret-damage-7", Tech = 6},
	{	Name = "laser-turret-damage-8", Tech = 7},
	{	Name = "shotgun-shell-damage-1", Tech = 3},
	{	Name = "shotgun-shell-damage-2", Tech = 3},
	{	Name = "shotgun-shell-damage-3", Tech = 3},
	{	Name = "shotgun-shell-damage-4", Tech = 3},
	{	Name = "shotgun-shell-damage-5", Tech = 4},
	{	Name = "shotgun-shell-damage-6", Tech = 6},
	{	Name = "shotgun-shell-damage-7", Tech = 7},
	{	Name = "shotgun-shell-speed-1", Tech = 3},
	{	Name = "shotgun-shell-speed-2", Tech = 3},
	{	Name = "shotgun-shell-speed-3", Tech = 3},
	{	Name = "shotgun-shell-speed-4", Tech = 3},
	{	Name = "shotgun-shell-speed-5", Tech = 4},
	{	Name = "shotgun-shell-speed-6", Tech = 6},
	{	Name = "laser-turret-speed-1", Tech = 3},
	{	Name = "laser-turret-speed-2", Tech = 3},
	{	Name = "laser-turret-speed-3", Tech = 4},
	{	Name = "laser-turret-speed-4", Tech = 4},
	{	Name = "laser-turret-speed-5", Tech = 6},
	{	Name = "laser-turret-speed-6", Tech = 6},
	{	Name = "laser-turret-speed-7", Tech = 6},
	{	Name = "gun-turret-damage-1", Tech = 3},
	{	Name = "gun-turret-damage-2", Tech = 3},
	{	Name = "gun-turret-damage-3", Tech = 3},
	{	Name = "gun-turret-damage-4", Tech = 3},
	{	Name = "gun-turret-damage-5", Tech = 4},
	{	Name = "gun-turret-damage-6", Tech = 6},
	{	Name = "gun-turret-damage-7", Tech = 7},
	{	Name = "flamethrower-damage-1", Tech = 3},
	{	Name = "flamethrower-damage-2", Tech = 3},
	{	Name = "flamethrower-damage-3", Tech = 4},
	{	Name = "flamethrower-damage-4", Tech = 4},
	{	Name = "flamethrower-damage-5", Tech = 6},
	{	Name = "flamethrower-damage-6", Tech = 6},
	{	Name = "flamethrower-damage-7", Tech = 7},
	{	Name = "combat-robotics", Tech = 3},
	{	Name = "combat-robotics-2", Tech = 4},
	{	Name = "combat-robotics-3", Tech = 6},
	{	Name = "follower-robot-count-1", Tech = 3},
	{	Name = "follower-robot-count-2", Tech = 3},
	{	Name = "follower-robot-count-3", Tech = 4},
	{	Name = "follower-robot-count-4", Tech = 4},
	{	Name = "follower-robot-count-5", Tech = 6},
	{	Name = "follower-robot-count-6", Tech = 6},
	{	Name = "follower-robot-count-7", Tech = 7},
	{	Name = "kovarex-enrichment-process", Tech = 6},
	{	Name = "nuclear-fuel-reprocessing", Tech = 5},
	{	Name = "nuclear-power", Tech = 4},
	{	Name = "combat-robot-damage-1", Tech = 3},
	{	Name = "combat-robot-damage-2", Tech = 3},
	{	Name = "combat-robot-damage-3", Tech = 4},
	{	Name = "combat-robot-damage-4", Tech = 4},
	{	Name = "combat-robot-damage-5", Tech = 6},
	{	Name = "combat-robot-damage-6", Tech = 7},
	{	Name = "heavy-armor", Tech = 3},
	{	Name = "modular-armor", Tech = 3},
	{	Name = "power-armor", Tech = 4},
	{	Name = "power-armor-2", Tech = 6},
	{	Name = "energy-shield-equipment", Tech = 3},
	{	Name = "energy-shield-mk2-equipment", Tech = 4},
	{	Name = "night-vision-equipment", Tech = 3},
	{	Name = "exoskeleton-equipment", Tech = 4},
	{	Name = "battery-equipment", Tech = 3},
	{	Name = "battery-mk2-equipment", Tech = 4},
	{	Name = "solar-panel-equipment", Tech = 3},
	{	Name = "fusion-reactor-equipment", Tech = 3},
	{	Name = "personal-laser-defense-equipment", Tech = 4},
	{	Name = "discharge-defense-equipment", Tech = 4},
	{	Name = "modules", Tech = 3},
	{	Name = "speed-module", Tech = 3},
	{	Name = "speed-module-2", Tech = 4},
	{	Name = "speed-module-3", Tech = 5},
	{	Name = "productivity-module", Tech = 3},
	{	Name = "productivity-module-2", Tech = 4},
	{	Name = "productivity-module-3", Tech = 5},
	{	Name = "effectivity-module", Tech = 3},
	{	Name = "effectivity-module-2", Tech = 4},
	{	Name = "effectivity-module-3", Tech = 5},
	{	Name = "effect-transmission", Tech = 6},
	{	Name = "rocket-silo", Tech = 6},
	{	Name = "landfill", Tech = 2},
	--{	Name = "landfill", Tech = 3},
}

Data_Table_Tech_Edit_Base = {
	{
		Name = "stone-walls",
		Clear_Tech_Ingredients = true,
		New_Ingredients = {{dyworld_prefix.."lab-tool-stone", 1}}
	},
	{
		Name = "landfill",
		Clear_Tech_Ingredients = true,
		New_Ingredients = {{dyworld_prefix.."lab-tool-stone", 1},{dyworld_prefix.."lab-tool-coal", 1}}
	},
}

data.raw.technology["landfill"].unit.count = Resource_Water and 10 or 50
data.raw.technology["landfill"].unit.time = Resource_Water and 10 or 30
data.raw.technology[dyworld_prefix.."tech-"..basic].prerequisites = {}
data.raw.technology[dyworld_prefix.."tech-"..intermediate].prerequisites = {}
data.raw.technology[dyworld_prefix.."tech-"..enhanced].prerequisites = {}
data.raw.technology[dyworld_prefix.."tech-"..advanced].prerequisites = {}

for k,v in pairs(Data_Table_Tech_Edit_Base) do
	if v.Clear_Tech_Ingredients then
		data.raw.technology[v.Name].unit.ingredients = {}
	end
	for _,z in pairs(v.New_Ingredients) do
		table.insert(data.raw.technology[v.Name].unit.ingredients,z)
	end
end

for k,v in pairs(Data_Table_Tech_PreReq) do
	if not data.raw.technology[v.Name].prerequisites then data.raw.technology[v.Name].prerequisites = {} end
	if v.Tech == 3 then
		table.insert(data.raw.technology[v.Name].prerequisites,dyworld_prefix.."tech-"..basic)
	elseif v.Tech == 4 then
		table.insert(data.raw.technology[v.Name].prerequisites,dyworld_prefix.."tech-"..intermediate)
	elseif v.Tech == 5 then
		table.insert(data.raw.technology[v.Name].prerequisites,dyworld_prefix.."tech-"..enhanced)
	elseif v.Tech == 6 then
		table.insert(data.raw.technology[v.Name].prerequisites,dyworld_prefix.."tech-"..advanced)
	elseif v.Tech == 7 then
		table.insert(data.raw.technology[v.Name].prerequisites,dyworld_prefix.."tech-"..godlike)
	end
end

for k,v in pairs(Data_Table_Tech_PreReq) do
	if not data.raw.technology[v.Name].prerequisites then data.raw.technology[v.Name].prerequisites = {} end
	if v.Tech == 2 then
		table.insert(data.raw.technology[dyworld_prefix.."tech-"..basic].prerequisites,v.Name)
	elseif v.Tech == 3 then
		table.insert(data.raw.technology[dyworld_prefix.."tech-"..intermediate].prerequisites,v.Name)
	elseif v.Tech == 4 then
		table.insert(data.raw.technology[dyworld_prefix.."tech-"..enhanced].prerequisites,v.Name)
	elseif v.Tech == 5 then
		table.insert(data.raw.technology[dyworld_prefix.."tech-"..advanced].prerequisites,v.Name)
	elseif v.Tech == 6 then
		table.insert(data.raw.technology[dyworld_prefix.."tech-"..godlike].prerequisites,v.Name)
	end
end