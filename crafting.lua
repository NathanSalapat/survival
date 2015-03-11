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
