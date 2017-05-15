require "data/prefix"
Resource_Water = settings.startup["DyWorld-resource-water"].value

Data_Table_Main_Tech = {
	{
		Name = dyworld_prefix.."tech-"..primitive,
		Count = 10,
		Time = 1,
		PreReq = false,
		PreReq_Tech = {},
		Ingredients = {{dyworld_prefix.."lab-tool-stone", 1}},
	},
	{
		Name = dyworld_prefix.."tech-"..basic,
		Count = Resource_Water and 40 or 200,
		Time = 5,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..primitive},
		Ingredients = {{dyworld_prefix.."lab-tool-stone", 1},{dyworld_prefix.."lab-tool-copper", 1},{dyworld_prefix.."lab-tool-iron", 1},{dyworld_prefix.."lab-tool-coal", 1}},
	},
	{
		Name = dyworld_prefix.."tech-"..intermediate,
		Count = 250,
		Time = 10,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..basic},
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
	},
	{
		Name = dyworld_prefix.."tech-"..enhanced,
		Count = 450,
		Time = 20,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..intermediate},
		Ingredients = {{"science-pack-2", 1}},
	},
	{
		Name = dyworld_prefix.."tech-"..advanced,
		Count = 750,
		Time = 60,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..enhanced},
		Ingredients = {{"science-pack-3", 1}},
	},
	{
		Name = dyworld_prefix.."tech-"..godlike,
		Count = 2500,
		Time = 600,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..advanced},
		Ingredients = {{"science-pack-3", 1}},
	},
}

Data_Table_Tech = {
	{
		Name = dyworld_prefix.."tech-chests-1",
		Icon = data.raw["mining-tool"]["iron-axe"].icon,
		Count = Resource_Water and 5 or 25,
		Time = 1,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..primitive},
		Effects = true,
		Effects_Ingredients = {"iron-chest"},
		Base_Edit = true,
		Base_Edit_Name = "iron-chest",
		Ingredients = {{dyworld_prefix.."lab-tool-iron", 1}},
	},
	{
		Name = dyworld_prefix.."tech-tools-1",
		Icon = data.raw["mining-tool"]["iron-axe"].icon,
		Count = Resource_Water and 5 or 25,
		Time = 2,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..primitive},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."tool-04"},
		Base_Edit = false,
		Ingredients = {{dyworld_prefix.."lab-tool-iron", 1}},
	},
	{
		Name = dyworld_prefix.."tech-tools-2",
		Icon = data.raw["mining-tool"]["iron-axe"].icon,
		Count = 50,
		Time = 5,
		PreReq = true,
		PreReq_Tech = {"steel-processing", dyworld_prefix.."tech-tools-1"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."tool-05"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1}},
	},
	{
		Name = dyworld_prefix.."tech-armor-1",
		Icon = data.raw.armor["power-armor-mk2"].icon,
		Count = 500,
		Time = 5,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..advanced, "power-armor-2"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."armor-01"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
	},
	{
		Name = dyworld_prefix.."tech-armor-2",
		Icon = data.raw.armor["power-armor-mk2"].icon,
		Count = 1000,
		Time = 5,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-armor-1"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."armor-02"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
	},
	{
		Name = dyworld_prefix.."tech-armor-3",
		Icon = data.raw.armor["power-armor-mk2"].icon,
		Count = 1500,
		Time = 5,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-armor-2"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."armor-03"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
	},
	{
		Name = dyworld_prefix.."tech-armor-4",
		Icon = data.raw.armor["power-armor-mk2"].icon,
		Count = 2000,
		Time = 5,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-armor-3"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."armor-04"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
	},
	{
		Name = dyworld_prefix.."tech-armor-5",
		Icon = data.raw.armor["power-armor-mk2"].icon,
		Count = 1500,
		Time = 5,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-armor-4"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."armor-05"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
	},
	{
		Name = dyworld_prefix.."tech-turret-1",
		Icon = data.raw.item["gun-turret"].icon,
		Count = Resource_Water and 5 or 25,
		Time = 5,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..primitive},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."turret-basic-02", dyworld_prefix.."ammo-basic-03"},
		Base_Edit = false,
		Ingredients = {{dyworld_prefix.."lab-tool-iron", 1}},
	},
	{
		Name = dyworld_prefix.."tech-turret-2",
		Icon = data.raw.item["gun-turret"].icon,
		Count = Resource_Water and 10 or 50,
		Time = 5,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-turret-1"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."turret-sniper-01", dyworld_prefix.."ammo-sniper-01", dyworld_prefix.."ammo-sniper-02", dyworld_prefix.."ammo-sniper-03"},
		Base_Edit = false,
		Ingredients = {{dyworld_prefix.."lab-tool-iron", 1}},
	},
	{
		Name = dyworld_prefix.."tech-turret-3",
		Icon = data.raw.item["gun-turret"].icon,
		Count = Resource_Water and 20 or 100,
		Time = 5,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-turret-2", "steel-processing"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."ammo-sniper-04", dyworld_prefix.."ammo-basic-04"},
		Base_Edit = false,
		Ingredients = {{dyworld_prefix.."lab-tool-iron", 1}},
	},
	{
		Name = dyworld_prefix.."tech-drill-1",
		Icon = data.raw["item"]["electric-mining-drill"].icon,
		Count = 100,
		Time = 5,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..intermediate},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."drill-electric-1"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
	},
	{
		Name = dyworld_prefix.."tech-drill-2",
		Icon = data.raw["item"]["electric-mining-drill"].icon,
		Count = 250,
		Time = 10,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-drill-1"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."drill-electric-2"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
	},
	{
		Name = dyworld_prefix.."tech-drill-3",
		Icon = data.raw["item"]["electric-mining-drill"].icon,
		Count = 500,
		Time = 20,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-drill-2", dyworld_prefix.."tech-"..enhanced},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."drill-electric-3"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"production-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-drill-4",
		Icon = data.raw["item"]["electric-mining-drill"].icon,
		Count = 1000,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-drill-3"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."drill-electric-4"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"production-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-drill-5",
		Icon = data.raw["item"]["electric-mining-drill"].icon,
		Count = 1000,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-drill-4", dyworld_prefix.."tech-"..advanced},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."drill-electric-5"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"production-science-pack", 1},{"high-tech-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-drill-6",
		Icon = data.raw["item"]["electric-mining-drill"].icon,
		Count = 2000,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-drill-5"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."drill-electric-6"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"production-science-pack", 1},{"high-tech-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-drill-7",
		Icon = data.raw["item"]["electric-mining-drill"].icon,
		Count = 1000,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-drill-6", dyworld_prefix.."tech-"..godlike},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."drill-electric-7"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"production-science-pack", 1},{"high-tech-science-pack", 1},{"space-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-drill-8",
		Icon = data.raw["item"]["electric-mining-drill"].icon,
		Count = 2000,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-drill-7"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."drill-electric-8"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"production-science-pack", 1},{"high-tech-science-pack", 1},{"space-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-roboport-1",
		Icon = data.raw["item"]["roboport"].icon,
		Count = 500,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..intermediate, "logistic-system"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."roboport-1", dyworld_prefix.."roboport-2", dyworld_prefix.."roboport-3"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"production-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-roboport-2",
		Icon = data.raw["item"]["roboport"].icon,
		Count = 50000,
		Time = 60,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..godlike},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."roboport-godlike", dyworld_prefix.."construction-robot-godlike", dyworld_prefix.."logistic-robot-godlike"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"high-tech-science-pack", 1},{"production-science-pack", 1},{"space-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-primitive-construction",
		Icon = data.raw.item["gun-turret"].icon,
		Count = Resource_Water and 20 or 100,
		Time = 5,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..primitive},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."construction-robot-1", dyworld_prefix.."logistic-storage-1", dyworld_prefix.."roboport-primitive"},
		Base_Edit = false,
		Ingredients = {{dyworld_prefix.."lab-tool-iron", 1},{dyworld_prefix.."lab-tool-copper", 1}},
	},
	{
		Name = dyworld_prefix.."tech-energy-1",
		Icon = data.raw.item["gun-turret"].icon,
		Count = 500,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {"solar-energy", "electric-energy-accumulators-1"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."solar-1", dyworld_prefix.."accumulator-1"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1}},
	},
	{
		Name = dyworld_prefix.."tech-energy-2",
		Icon = data.raw.item["gun-turret"].icon,
		Count = 1000,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-energy-1", dyworld_prefix.."tech-"..intermediate},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."solar-2", dyworld_prefix.."accumulator-2"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
	},
	{
		Name = dyworld_prefix.."tech-energy-3",
		Icon = data.raw.item["gun-turret"].icon,
		Count = 1500,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-energy-2"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."solar-3", dyworld_prefix.."accumulator-3"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
	},
	{
		Name = dyworld_prefix.."tech-energy-4",
		Icon = data.raw.item["gun-turret"].icon,
		Count = 2000,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-energy-3", dyworld_prefix.."tech-"..enhanced},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."solar-4", dyworld_prefix.."accumulator-4"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"production-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-energy-5",
		Icon = data.raw.item["gun-turret"].icon,
		Count = 2500,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-energy-4"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."solar-5", dyworld_prefix.."accumulator-5"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"production-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-energy-6",
		Icon = data.raw.item["gun-turret"].icon,
		Count = 3000,
		Time = 45,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-energy-5", dyworld_prefix.."tech-"..advanced},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."solar-6", dyworld_prefix.."accumulator-6"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"high-tech-science-pack", 1},{"production-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-energy-7",
		Icon = data.raw.item["gun-turret"].icon,
		Count = 3500,
		Time = 45,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-energy-6"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."solar-7", dyworld_prefix.."accumulator-7"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"high-tech-science-pack", 1},{"production-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-energy-8",
		Icon = data.raw.item["gun-turret"].icon,
		Count = 4000,
		Time = 60,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-energy-7", dyworld_prefix.."tech-"..godlike},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."solar-8", dyworld_prefix.."accumulator-8"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"high-tech-science-pack", 1},{"production-science-pack", 1},{"space-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-energy-9",
		Icon = data.raw.item["gun-turret"].icon,
		Count = 4500,
		Time = 60,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-energy-8"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."solar-9", dyworld_prefix.."accumulator-9"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"high-tech-science-pack", 1},{"production-science-pack", 1},{"space-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-logistics-"..intermediate,
		Icon = data.raw.item["gun-turret"].icon,
		Count = 500,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..intermediate},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."inserter-fast-1", dyworld_prefix.."inserter-long-1", dyworld_prefix.."inserter-stack-1", dyworld_prefix.."transport-belt-02", dyworld_prefix.."transport-splitter-02", dyworld_prefix.."transport-underground-02"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
	},
	{
		Name = dyworld_prefix.."tech-logistics-"..enhanced,
		Icon = data.raw.item["gun-turret"].icon,
		Count = 1000,
		Time = 40,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..enhanced},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."inserter-fast-2", dyworld_prefix.."inserter-long-2", dyworld_prefix.."inserter-stack-2", dyworld_prefix.."transport-belt-03", dyworld_prefix.."transport-splitter-03", dyworld_prefix.."transport-underground-03"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"production-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-logistics-"..advanced,
		Icon = data.raw.item["gun-turret"].icon,
		Count = 2500,
		Time = 50,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..advanced},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."inserter-fast-3", dyworld_prefix.."inserter-long-3", dyworld_prefix.."inserter-stack-3", dyworld_prefix.."transport-belt-04", dyworld_prefix.."transport-splitter-04", dyworld_prefix.."transport-underground-04"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"high-tech-science-pack", 1},{"production-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-logistics-"..godlike,
		Icon = data.raw.item["gun-turret"].icon,
		Count = 5000,
		Time = 60,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..godlike},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."inserter-fast-4", dyworld_prefix.."inserter-long-4", dyworld_prefix.."inserter-stack-4", dyworld_prefix.."transport-belt-05", dyworld_prefix.."transport-splitter-05", dyworld_prefix.."transport-underground-05"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"high-tech-science-pack", 1},{"production-science-pack", 1},{"space-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-railway-"..intermediate,
		Icon = data.raw.item["gun-turret"].icon,
		Count = 450,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..intermediate},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."locomotive-1"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
	},
	{
		Name = dyworld_prefix.."tech-railway-"..enhanced,
		Icon = data.raw.item["gun-turret"].icon,
		Count = 700,
		Time = 40,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..enhanced},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."locomotive-2"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"production-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-railway-"..advanced,
		Icon = data.raw.item["gun-turret"].icon,
		Count = 1400,
		Time = 50,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..advanced},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."locomotive-3"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"high-tech-science-pack", 1},{"production-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-railway-"..godlike,
		Icon = data.raw.item["gun-turret"].icon,
		Count = 4000,
		Time = 60,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..godlike},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."locomotive-4"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"high-tech-science-pack", 1},{"production-science-pack", 1},{"space-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-military-"..intermediate,
		Icon = data.raw.item["gun-turret"].icon,
		Count = 450,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..intermediate},
		Effects = false,
		Effects_Ingredients = {dyworld_prefix.."locomotive-4"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"military-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-military-"..enhanced,
		Icon = data.raw.item["gun-turret"].icon,
		Count = 700,
		Time = 40,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..enhanced},
		Effects = false,
		Effects_Ingredients = {dyworld_prefix.."locomotive-4"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"military-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-military-"..advanced,
		Icon = data.raw.item["gun-turret"].icon,
		Count = 1400,
		Time = 50,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..advanced},
		Effects = false,
		Effects_Ingredients = {dyworld_prefix.."locomotive-4"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"military-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-military-"..godlike,
		Icon = data.raw.item["gun-turret"].icon,
		Count = 4000,
		Time = 60,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-"..godlike},
		Effects = false,
		Effects_Ingredients = {dyworld_prefix.."locomotive-4"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"military-science-pack", 1},{"space-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-laser-turret-1",
		Icon = data.raw["item"]["roboport"].icon,
		Count = 100,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {"laser-turrets"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."turret-laser-1-basic-1", dyworld_prefix.."turret-laser-1-basic-2", dyworld_prefix.."turret-laser-1-sniper-1"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"military-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-laser-turret-2",
		Icon = data.raw["item"]["roboport"].icon,
		Count = 250,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-military-"..intermediate, dyworld_prefix.."tech-laser-turret-1"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."turret-laser-2-basic-1", dyworld_prefix.."turret-laser-2-basic-2", dyworld_prefix.."turret-laser-2-sniper-1"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"military-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-laser-turret-3",
		Icon = data.raw["item"]["roboport"].icon,
		Count = 500,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-military-"..enhanced, dyworld_prefix.."tech-laser-turret-2"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."turret-laser-3-basic-1", dyworld_prefix.."turret-laser-3-basic-2", dyworld_prefix.."turret-laser-3-sniper-1"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"military-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-laser-turret-4",
		Icon = data.raw["item"]["roboport"].icon,
		Count = 1000,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-military-"..advanced, dyworld_prefix.."tech-laser-turret-3"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."turret-laser-4-basic-1", dyworld_prefix.."turret-laser-4-basic-2", dyworld_prefix.."turret-laser-4-sniper-1"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"military-science-pack", 1}},
	},
	{
		Name = dyworld_prefix.."tech-laser-turret-5",
		Icon = data.raw["item"]["roboport"].icon,
		Count = 2500,
		Time = 30,
		PreReq = true,
		PreReq_Tech = {dyworld_prefix.."tech-military-"..godlike, dyworld_prefix.."tech-laser-turret-4"},
		Effects = true,
		Effects_Ingredients = {dyworld_prefix.."turret-laser-5-basic-1", dyworld_prefix.."turret-laser-5-basic-2", dyworld_prefix.."turret-laser-5-sniper-1"},
		Base_Edit = false,
		Ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"military-science-pack", 1}},
	},
}