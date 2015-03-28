minetest.register_craftitem('survival:energy_bar', {
	description = 'energy bar',
	inventory_image = 'survival_energy_bar.png',
	on_use = minetest.item_eat(10) -- Should also make you thirsty.
})

minetest.register_craftitem('survival:slug_raw', {
	description = 'slug',
	inventory_image = 'survival_slug_raw.png',
	on_use = minetest.item_eat(-4)
})

minetest.register_craftitem('survival:slug_cooked', {
	description = 'cooked slug',
	inventory_image = 'survival_slug_cooked.png',
	on_use = minetest.item_eat(.25)
})

minetest.register_craftitem('survival:cricket_raw', {
	description = 'cricket',
	inventory_image = 'survival_cricket_raw.png',
	on_use = minetest.item_eat(.25)
})

minetest.register_craftitem('survival:cricket_cooked', {
	description = 'cooked cricket',
	inventory_image = 'survival_cricket_cooked.png',
	on_use = minetest.item_eat(.125)
})

minetest.register_craftitem('survival:worm_raw', {
	description = 'worm',
	inventory_image = 'survival_worm_raw.png',
	on_use = minetest.item_eat(.25)
})

minetest.register_craftitem('survival:worm_cooked', {
	description = 'cooked worm',
	inventory_image = 'survival_worm_cooked.png',
	on_use = minetest.item_eat(.125)
})

minetest.register_craftitem('survival:centipede_raw', {
	description = 'centipede',
	inventory_image = 'survival_centipede_raw.png',
	on_use = minetest.item_eat(.25)
})

minetest.register_craftitem('survival:centipede_cooked', {
	description = 'cooked centipede',
	inventory_image = 'survival_centipede_cooked.png',
	on_use = minetest.item_eat(.25)
})

minetest.register_craftitem('survival:milipede_raw', {
	description = 'milipede',
	inventory_image = 'survival_milipede_raw.png',
	on_use = minetest.item_eat(-4)
})
	
minetest.register_craftitem('survival:milipede_cooked', {
	description = 'cooked milipede',
	inventory_image = 'survival_milipede_cooked.png',
	on_use = minetest.item_eat(-3)
})
