require "data/prefix"
	
for k,v in pairs(Material_Table) do
	DyWorld_Pumps(v)
end

DyWorld_Add_To_Tech("automation", dy.."copper-pump")
DyWorld_Add_To_Tech("automation", dy.."iron-pump")
DyWorld_Add_To_Tech("steel-processing", dy.."steel-pump")
DyWorld_Add_To_Tech(dy.."chromium-processing", dy.."chromium-pump")
DyWorld_Add_To_Tech(dy.."tin-processing", dy.."tin-pump")
DyWorld_Add_To_Tech(dy.."silver-processing", dy.."silver-pump")
DyWorld_Add_To_Tech(dy.."gold-processing", dy.."gold-pump")
DyWorld_Add_To_Tech(dy.."lead-processing", dy.."lead-pump")

DyWorld_Add_To_Tech("automation", dy.."copper-offshore-pump")
DyWorld_Add_To_Tech("automation", dy.."iron-offshore-pump")
DyWorld_Add_To_Tech("steel-processing", dy.."steel-offshore-pump")
DyWorld_Add_To_Tech(dy.."chromium-processing", dy.."chromium-offshore-pump")
DyWorld_Add_To_Tech(dy.."tin-processing", dy.."tin-offshore-pump")
DyWorld_Add_To_Tech(dy.."silver-processing", dy.."silver-offshore-pump")
DyWorld_Add_To_Tech(dy.."gold-processing", dy.."gold-offshore-pump")
DyWorld_Add_To_Tech(dy.."lead-processing", dy.."lead-offshore-pump")

data.raw.recipe[dy.."wood-pump"].enabled = true
data.raw.recipe[dy.."wood-offshore-pump"].enabled = true

data.raw.recipe[dy.."rubber-pump"].enabled = true
data.raw.recipe[dy.."rubber-offshore-pump"].enabled = true

data.raw.recipe[dy.."obsidian-pump"].enabled = true
data.raw.recipe[dy.."obsidian-offshore-pump"].enabled = true

data.raw.recipe[dy.."stone-pump"].enabled = true
data.raw.recipe[dy.."stone-offshore-pump"].enabled = true