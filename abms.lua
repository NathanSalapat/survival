minetest.register_abm({
	nodenames = {"default:sand"},
	neighbors = {"group:water"},
	interval = 30,
	chance = 75,
	action = function(pos, node)
		local name = minetest.get_node(pos).name
		if name == "default:sand" then
         if minetest.find_node_near(pos, 3, {"survival:sand_with_food"}) ~= nil then
				return
			end
		minetest.set_node(pos, {name='survival:sand_with_food'})
		end
	end,
})
