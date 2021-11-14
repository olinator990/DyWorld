
function DyComPa_Prereq_Tech_Fix(TECH, ARG)
    if data.raw.technology[TECH] then
        data.raw.technology[TECH].prerequisites = ARG
    end
end
function DyComPa_Ingre_Tech_Fix(TECH, ARG)
    if data.raw.technology[TECH] then
        data.raw.technology[TECH].unit.count = 1
        data.raw.technology[TECH].unit.ingredients = ARG
    end
end

local Fix_Prereq_Table = {
    ["rocket-fuel"] = {"logistic-science-pack", "oil-processing-2"},
    ["nano-range-3"] = {"intermediates-3", "nano-range-2"},
    ["nano-speed-3"] = {"intermediates-3", "nano-speed-2"},
    ["nano-range-4"] = {"storage-2", "nano-range-3"},
    ["nano-speed-4"] = {"storage-2", "nano-speed-3"},    
    ["se-heat-shielding"] = {"chemical-science-pack"},
}

for k,v in pairs(Fix_Prereq_Table) do
	DyComPa_Prereq_Tech_Fix(k, v)
end

data.raw.technology["rocket-fuel"].unit.ingredients = {
	{"automation-science-pack", 300},
	{"logistic-science-pack", 300},
}