


function Event_on_init()
local Story = {
	act = 1,
	phase = 1,
	acts = {
		[1] = {
			[1] = {
				done = false,
				amount_left = 4,
				objectives_amount = 4,
				recipes = true,
				objectives = {
					[1] = {
						type_1 = "build", 
						type_2 = "name", 
						name = "basic-kiln", 
						amount_needed = math.random(8,12),
						amount_done = 0,
						done = false,
					},
					[2] = {
						type_1 = "mine", 
						type_2 = "item", 
						name = "limestone", 
						amount_needed = math.random(25,125),
						amount_done = 0,
						done = false,
					},
					[3] = {
						type_1 = "mine", 
						type_2 = "item", 
						name = "wood", 
						amount_needed = math.random(20,75),
						amount_done = 0,
						done = false,
					},
					[4] = {
						type_1 = "craft", 
						type_2 = "item", 
						name = "small-storage", 
						amount_needed = math.random(4,8),
						amount_done = 0,
						done = false,
					},
				},
			},
			[2] = {
				done = false,
				amount_left = 2,
				objectives_amount = 2,
				message = "DyDs-story.message-phase-2",
				recipes = true,
				objectives = {
					[1] = {
						type_1 = "died", 
						type_2 = "name", 
						name = "small-biter", 
						amount_needed = math.random(4,16),
						amount_done = 0,
						done = false,
					},
					[2] = {
						type_1 = "build", 
						type_2 = "name", 
						name = "basic-burner-drill", 
						amount_needed = math.random(4,16),
						amount_done = 0,
						done = false,
					},
					[3] = {
						type_1 = "label", 
						type_2 = "name", 
						name = "explore", 
						amount_needed = math.random(4,16),
						amount_done = 0,
						done = false,
					},
				},
			},
			[3] = {
				done = false,
				amount_left = 3,
				objectives_amount = 3,
				--message = "DyDs-story.message-phase-2",
				recipes = true,
				objectives = {
					[1] = {
						type_1 = "craft", 
						type_2 = "item", 
						name = "basic-armor", 
						amount_needed = 1,
						amount_done = 0,
						done = false,
					},
					[2] = {
						type_1 = "build", 
						type_2 = "name", 
						name = "basic-wall", 
						amount_needed = math.random(50,200),
						amount_done = 0,
						done = false,
					},
					[3] = {
						type_1 = "build", 
						type_2 = "name", 
						name = "basic-9mm-turret", 
						amount_needed = math.random(5,20),
						amount_done = 0,
						done = false,
					},
				},
			},
			[4] = {
				done = false,
				amount_left = 3,
				objectives_amount = 3,
				--message = "DyDs-story.message-phase-2",
				recipes = true,
				objectives = {
					[1] = {
						type_1 = "craft", 
						type_2 = "item", 
						name = "offshore-pump", 
						amount_needed = 1,
						amount_done = 0,
						done = false,
					},
					[2] = {
						type_1 = "craft", 
						type_2 = "item", 
						name = "bronze-pipe", 
						amount_needed = math.random(5,25),
						amount_done = 0,
						done = false,
					},
					[3] = {
						type_1 = "build", 
						type_2 = "name", 
						name = "basic-treefarm", 
						amount_needed = math.random(1,5),
						amount_done = 0,
						done = false,
					},
				},
			},
			[5] = {
				done = false,
				amount_left = 3,
				objectives_amount = 3,
				--message = "DyDs-story.message-phase-2",
				recipes = true,
				objectives = {
					[1] = {
						type_1 = "craft", 
						type_2 = "item", 
						name = "burner-inserter", 
						amount_needed = math.random(5,15),
						amount_done = 0,
						done = false,
					},
					[2] = {
						type_1 = "craft", 
						type_2 = "item", 
						name = "bronze-gear", 
						amount_needed = math.random(30,100),
						amount_done = 0,
						done = false,
					},
					[3] = {
						type_1 = "build", 
						type_2 = "name", 
						name = "basic-transport-belt", 
						amount_needed = math.random(25,75),
						amount_done = 0,
						done = false,
					},
				},
			},
			[6] = {
				done = false,
				amount_left = 3,
				objectives_amount = 3,
				--message = "DyDs-story.message-phase-2",
				recipes = true,
				objectives = {
					[1] = {
						type_1 = "died", 
						type_2 = "type", 
						name = "unit", 
						amount_needed = math.random(400,800),
						amount_done = 0,
						done = false,
					},
					[2] = {
						type_1 = "died", 
						type_2 = "type", 
						name = "unit-spawner", 
						amount_needed = math.random(5,20),
						amount_done = 0,
						done = false,
					},
					[3] = {
						type_1 = "build", 
						type_2 = "name", 
						name = "burner-assembler", 
						amount_needed = math.random(1,5),
						amount_done = 0,
						done = false,
					},
				},
			},
			[7] = {
				done = false,
				amount_left = 1,
				objectives_amount = 1,
				--message = "DyDs-story.message-phase-2",
				recipes = true,
				objectives = {
					[1] = {
						type_1 = "died", 
						type_2 = "name", 
						name = "small-biter", 
						amount_needed = 10,
						amount_done = 0,
						done = false,
					},
				},
			},
			[8] = {
				done = false,
				amount_left = 1,
				objectives_amount = 1,
				--message = "DyDs-story.message-phase-2",
				recipes = true,
				objectives = {
					[1] = {
						type_1 = "died", 
						type_2 = "name", 
						name = "small-biter", 
						amount_needed = 10,
						amount_done = 0,
						done = false,
					},
				},
			},
			[9] = {
				done = false,
				amount_left = 1,
				objectives_amount = 1,
				--message = "DyDs-story.message-phase-2",
				recipes = true,
				objectives = {
					[1] = {
						type_1 = "died", 
						type_2 = "name", 
						name = "small-biter", 
						amount_needed = 10,
						amount_done = 0,
						done = false,
					},
				},
			},
		},
	}
}

	if not global.dyworld then
		global.dyworld = {
			version = "0.9.0",
			players = {},
			game_stats = {
				ticks = 0,
				chunks = 0,
				sector_scanned = 0,
				crafted_amount = 0,
				crafted_names = {},
				mined_amount = 0,
				mined_names = {},
				build_amount = 0,
				build_names = {},
				killed_amount = 0,
				killed_names = {},
				picked_amount = 0,
				picked_names = {},
				days = 0,
				time_stamp = "",
				building_locations = {},
			},
			story = Story,
		}
	end
end
