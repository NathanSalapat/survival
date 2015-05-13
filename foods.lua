minetest.register_craftitem('survival:energy_bar', {
	description = 'energy bar',
	inventory_image = 'survival_energy_bar.png',
	on_use = minetest.item_eat(10)
	--should add some thirst.
})

minetest.register_craftitem('survival:slug_raw', {
	description = 'slug',
	inventory_image = 'survival_slug_raw.png',
	on_use = function(pos, player)
		local hp_gain = math.random(-4,1)
		local hp = player:get_hp()
		player:set_hp(hp + hp_gain)
	end
})

local food_table = { --craft, desc, invimg, health
{'slug_cooked', 'cooked slug', 'slug_cooked', .25},
{'cricket_raw', 'cricket', 'cricket_raw', .25},
{'cricket_cooked', 'cooked cricket', 'cricket_cooked', .125},
{'worm_raw', 'worm', 'worm_raw', .25},
{'worm_cooked', 'cooked worm', 'worm_cooked', .125},
{'centipede_raw', 'centipede', 'centipede_raw', .25},
{'centipede_cooked', 'cooked centipede', 'centipede_cooked', .25},
{'milipede_raw', 'milipede', 'milipede_raw', -4},
{'milipede_cooked', 'cooked milipede', 'milipede_cooked', -3},
{'oyster_raw', 'raw oyster', 'oyster_raw', .5},
{'oyster_cooked', 'cooked oyster', 'oyster_cooked', .6},
{'mussel_raw', 'raw mussel', 'mussel_raw', -.7},
{'mussel_cooked', 'cooked mussel', 'mussel_cooked', .6},
{'sugar', 'sugar', 'sugar', .1},
{'raw_kabob', 'uncooked seafood kabob', 'raw_kabob', 1},
{'cooked_kabob', 'seafood kabob', 'cooked_kabob', 2.5}
}

for i in ipairs (food_table) do
	local craft = food_table[i][1]
	local desc = food_table[i][2]
	local invimg = food_table[i][3]
	local health = food_table[i][4]

minetest.register_craftitem('survival:'..craft, {
	description = desc,
	inventory_image = 'survival_'..invimg..'.png',
	on_use = minetest.item_eat(health)
})
end
