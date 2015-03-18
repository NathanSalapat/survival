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
