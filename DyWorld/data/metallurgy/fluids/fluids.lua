require "data/prefix"

for k,v in pairs(Material_Table) do
	if v.Type == "Basic" or v.Type == "Alloy" then
		data:extend(
		{
		  {
			type = "fluid",
			name = dy.."molten-"..v.Name,
			icon = dyworld_path_fluid..v.Name..".png",
			default_temperature = Materials[v.Table].Melting_Point,
			max_temperature = Materials[v.Table].Boiling_Point,
			base_color = Material_Colors[v.Table],
			flow_color = Material_Colors[v.Table],
			order = v.Name,
			pressure_to_speed_ratio = 0.4,
			flow_to_energy_ratio = 0.59,
			auto_barrel = false
		  },
		})
	end
end

local Data_Table = {
	{
		Name = "molten-rock",
		Icon = dyworld_path_fluid.."rock.png",
		Def_Temp = Materials.Stone.Melting_Point,
		Max_Temp = Materials.Stone.Boiling_Point,
		Color_Base = Material_Colors.Stone,
		Color_Flow = Material_Colors.Stone,
		Barrel = false,
	},
}

for k,v in pairs(Data_Table) do
data:extend(
	{
		DyWorld_Fluid(v),
	})
end