-- I opted to put all the drinking stuff in this file, so if you don't want to play with
-- drinking enabled you can just modify the init.lua file and remove the line that loads
-- this file.

minetest.register_craftitem('survival:canteen_empty', {
		description = 'empty canteen',
		inventory_image = 'survival_canteen_empty.png',
		stack_max = 1,
		liquids_pointable = true,
		on_use = function(itemstack, user, pointed_thing)
			if string.find(minetest.get_node(pointed_thing.under).name, 'default:water_source')
				then
					local giving_back = 'survival:canteen_water_dirty'
					end
			end	
})
		
--minetest.register_craft({
--		output = 'survival:canteen_empty 1',
--		recipe = {
--			{probably steel, glass, and maybe string},
--			},
--})

minetest.register_craftitem('survival:canteen_water_clean', {
		description = 'clean drinking water',
		inventory_image = 'survival_canteen_water_clean.png',
		stack_max = 1,
		on_use = minetest.item_eat(1, 'survival:canteen_empty'),
})

minetest.register_craftitem('survival:canteen_water_dirty', {
		description = 'dirty water',
		inventory_image = 'survival_canteen_water_dirty.png',
		stack_max = 1,
		on_use = function(pos, player, itemstack)
			local hp_gain = math.random(-5,1)
			local hp = player:get_hp()
			if hp_gain <= 0 then
				player:set_hp(hp + hp_gain)
				return 'survival:canteen_empty'
--			else
				--drink was water with the thirsty mods API
				--both the if and else statements should also trigger wear on the canteen.
			end
		end
})
