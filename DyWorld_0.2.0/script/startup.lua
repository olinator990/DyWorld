module("startup", package.seeall)

Forces = {"sulfoids", "racides", "acidicus", "zeptipods", "plastumia", "fulgura"}

function Game()
	if not global.dyworld then
		global.dyworld = 
		{
			Items = {},
			Research = {},
			Players = 0,
			Chunks = 0,
			Generation_Ship_1 = false,
			Generation_Ship_2 = false,
			Generation_Ship_3 = false,
			ResearchLevel = "Primitive",
			Strength = 0,
			Endurance = 0,
			Speed = 0,
			Creations = 0,
			Implants = 0,
			Spirit = 0,
			Intelligence = 0,
			Wisdom = 0,
			Guile = 0,
			Knowledge = 0,
		}
	debug("Created global.dyworld")
	end
	if debug_test then
		game.forces.player.maximum_following_robot_count = 500
		game.forces.player.character_trash_slot_count = 50
		game.forces.player.character_logistic_slot_count = 50
		game.forces.player.auto_character_trash_slots = true
		game.forces.player.character_health_bonus = 99750
	end
	game.forces.player.ghost_time_to_live = (60*60*60*24) -- 24 hour live time
	game.forces.player.deconstruction_time_to_live = (60*60*60*24) -- 24 hour live time
	for k,v in pairs(Forces) do
		game.create_force(v)
		--debug("Created force: "..v)
		--TO DO: Added friend forces between them!
	end
end

function startup(PLAYER, ID)
	debug("Starting Startup")
	if not global.stats then global.stats = {} debug("Created global.stats") end
	global.dyworld.Players = global.dyworld.Players + 1
	--Prototype()
	if not global.players then
	debug("No global.players, creating new one")
		global.players = 
		{
			[ID] = 
			{
				PlayerInfo = PLAYER, 
				PlayerID = ID,
				State_Stats_GUI = false,
				physical =
				{
					strength = 1,
					endurance = 1,
					speed = 1,
					creations = 0,
					implants = 0,
				},
				mystical = 
				{ 
					spirit = 1,
					intelligence = 1,
					wisdom = 1,
					guile = 1,
					knowledge = 1,
				},
				stats = {},
			}
		}
	debug("Created global.players, and added "..ID.." to the table with blank stats")
	else
		global.players[ID] = 
		{
			PlayerInfo = PLAYER, 
			PlayerID = ID,
			State_Stats_GUI = false,
			physical =
			{
				strength = 1,
				endurance = 1,
				speed = 1,
				creations = 0,
				implants = 0,
			},
			mystical = 
			{ 
				spirit = 1,
				intelligence = 1,
				wisdom = 1,
				guile = 1,
				knowledge = 1,
			},
			stats = {},
		}
	debug("New player created, and added "..ID.." to global.players with blank stats")
	end
	if global.dyworld.ResearchLevel == "Primitive" then
		game.players[ID].disable_flashlight()
	end
	game.players[ID].get_inventory(defines.inventory.player_main).clear()
	game.players[ID].get_inventory(defines.inventory.player_quickbar).clear()
	game.players[ID].get_inventory(defines.inventory.player_guns).clear()
	game.players[ID].get_inventory(defines.inventory.player_ammo).clear()
	if debug_test then
		game.players[ID].insert{name="deconstruction-planner",count=1}
	end
	debug("Startup done")
end

function Prototype()
	global.dyworld.Items = {}
	for k,v in pairs(game.item_prototypes) do
		table.insert(global.dyworld.Items, v.name)
	end
end