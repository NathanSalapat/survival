minetest.register_craft({
		output = 'farming:cotton 1',
		recipe = {
			{'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1'},
			}
})

minetest.register_craft({
		output = 'survival:barrel 1',
		recipe = {
			{'group:wood', 'default:tree', 'group:wood'},
			{'group:wood', '', 'group:wood'},
			{'group:wood', 'default:tree', 'group:wood'},
			}
})

minetest.register_craft({
		output = 'survival:machete_wood 1',
		recipe = {
			{'', '', 'group:wood'},
			{'', 'group:wood', ''},
			{'group:stick', '', ''},
		}
})

minetest.register_craft({
		output = 'survival:machete_steel 1',
		recipe = {
			{'', '', 'default:steel_ingot'},
			{'', 'default:steel_ingot', ''},
			{'group:stick', '', ''},
		}
})

minetest.register_craft({
		output = 'survival:machete_bronze 1',
		recipe = {
			{'', '', 'default:bronze_ingot'},
			{'', 'default:bronze_ingot', ''},
			{'group:stick', '', ''},
		}
})

minetest.register_craft({
		output = 'survival:machete_diamond 1',
		recipe = {
			{'', '', 'default:diamond'},
			{'', 'default:diamond', ''},
			{'group:stick', '', ''},
		}
})

minetest.register_craft({
		output = 'survival:machete_mese 1',
		recipe = {
			{'', '', 'default:mese_crystal'},
			{'', 'default:mese_crystal', ''},
			{'group:stick', '', ''},
		}
})

minetest.register_craft({
		output = 'survival:sleeping_bag 1',
		recipe = {
		{'group:wool', 'group:wool', 'group:wool'}
		}
})

minetest.register_craft({
		output = 'survival:leafy_bed 1',
		recipe = {
		{'default:leaves', '', 'default:leaves'},
		{'default:leaves', 'default:leaves', 'default:leaves'}
		}
})

minetest.register_craft({
		type = 'cooking',
		output = 'survival:slug_cooked',
		recipe = 'survival:slug_raw',
		cooktime = 1,
		})
		
minetest.register_craft({
		type = 'cooking',
		output = 'survival:cricket_cooked',
		recipe = 'survival:cricket_raw',
		cooktime = 1,
		})

minetest.register_craft({
		type = 'cooking',
		output = 'survival:worm_cooked',
		recipe = 'survival:worm_raw',
		cooktime = 1,
		})

minetest.register_craft({
		type = 'cooking',
		output = 'survival:centipede_cooked',
		recipe = 'survival:centipede_raw',
		cooktime = 1,
		})

minetest.register_craft({
		type = 'cooking',
		output = 'survival:milipede_cooked',
		recipe = 'survival:milipede_raw',
		cooktime = 1,
		})
		
minetest.register_craft({
		type = 'cooking',
		output = 'survival:canteen_water_clean',
		recipe = 'survival:canteen_water_dirty',
		cooktime = 30, --boiling the water should take a long time.
})
