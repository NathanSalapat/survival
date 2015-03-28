local barrel_formspec =
	"size[8,9]"..
	default.gui_bg..
	default.gui_bg_img..
	default.gui_slots..
	"list[current_name;main;0,0.3;8,4;]"..
	"list[current_player;main;0,4.85;8,1;]"..
	"list[current_player;main;0,6.08;8,3;8]"..
	default.get_hotbar_bg(0,4.85)

minetest.register_node('survival:barrel', {
	description = 'Barrel',
	drawtype = 'mesh',
	mesh = 'survival_barrel.obj',
	tiles = {'survival_barrel.png'},
	groups = {choppy=2,oddly_breakable_by_hand=2},
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_wood_defaults(),
		on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", barrel_formspec)
		meta:set_string("infotext", "Barrel")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in barrel at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to barrel at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from barrel at "..minetest.pos_to_string(pos))
	end,
})

minetest.register_node(":default:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles = {"default_grass.png", "default_dirt.png", "default_dirt.png^default_grass_side.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1},
	drop = {
		max_items = 2,
		items = {
			{
			items = {'survival:slug_raw'},
			rarity = 30,
			},
			{
			items = {'survival:cricket_raw'},
			rarity = 30,
			},
			{
			items = {'survival:worm_raw'},
			rarity = 30,
			},
			{
			items = {'survival:centipede_raw'},
			rarity = 30,
			},
			{
			items = {'survival:milipede_raw'},
			rarity = 30,
			},
			{
			items = {'default:dirt'},
			},
		},
	},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.25},
	}),
})

minetest.register_node('survival:spigot', {
	description = 'spigot',
	drawtype = 'mesh',
	mesh = 'spigot.obj',
	tiles = {'default_cobble.png'},
	inventory_image = 'new_mod_suzanne.png',
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	paramtype = 'light',
	paramtype2 = 'wallmounted',
	selection_box = {
		type = 'fixed',
		fixed = {-.5, -.5, -.3, .5, .15, .4}, -- Right, Bottom, Back, Left, Top, Front
		},
	collision_box = {
		type = 'fixed',
		fixed = {-.5, -.5, -.3, .5, .15, .4}, -- Right, Bottom, Back, Left, Top, Front
		},
})

minetest.register_node('survival:sleeping_bag', {
	description = 'sleeping bag',
	drawtype = 'mesh',
	mesh = 'survival_sleeping_bag.obj',
	tiles = {'wool_white.png'},
	groups = {choppy=2, snappy=3,},
	paramtype = 'light',
	paramtype2 = 'facedir',
	selection_box = {
		type = 'fixed',
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.2, 1.5}, -- Right, Bottom, Back, Left, Top, Front
		},
	collision_box = {
		type = 'fixed',
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.2, 1.5}, -- Right, Bottom, Back, Left, Top, Front
		},
	after_place_node = function(pos, placer, itemstack)
			local n = minetest.get_node_or_nil(pos) --get the location of the placed node
			if not n or not n.param2 then
				minetest.remove_node(pos)
				return true
			end
			local dir = minetest.facedir_to_dir(n.param2) --figure out what direction the node is facing
			local p = {x=pos.x+dir.x, y=pos.y, z=pos.z+dir.z}
			local n2 = minetest.get_node_or_nil(p)
			local def = minetest.registered_items[n2.name] or nil
			if not n2 or not def or not def.buildable_to then --remove the node if it shouldn't be placeable.
				minetest.remove_node(pos)
				return true
			end
		end,
	on_rightclick = function(pos, node, clicker)
			beds.on_rightclick(pos, clicker)
--			player:set_hp(-1)
	end,
})

minetest.register_node('survival:leafy_bed', {
	description = 'bed of leaves',
	drawtype = 'mesh',
	mesh = 'survival_leafy_bed.obj',
	tiles = {'default_grass.png^default_jungleleaves.png'},
	groups = {choppy=2, snappy=3,},
	drop = {
		max_items = 4,
		items = {
			{
			items = {'survival:slug_raw'},
			rarity = 60,
			},
			{
			items = {'default:stick 4'},
			rarity = 10,
			},
			{
			items = {'default:stick 3'},
			rarity = 10,
			},
			{
			items = {'default:leaves 3'},
			rarity = 10,
			},
			{
			items = {'default:leaves 1'},
			},
		},
	},
	paramtype = 'light',
	paramtype2 = 'facedir',
	selection_box = {
		type = 'fixed',
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.2, 1.5}, -- Right, Bottom, Back, Left, Top, Front
		},
	collision_box = {
		type = 'fixed',
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.2, 1.5}, -- Right, Bottom, Back, Left, Top, Front
		},
	after_place_node = function(pos, placer, itemstack)
			local n = minetest.get_node_or_nil(pos) --get the location of the placed node
			if not n or not n.param2 then
				minetest.remove_node(pos)
				return true
			end
			local dir = minetest.facedir_to_dir(n.param2) --figure out what direction the node is facing
			local p = {x=pos.x+dir.x, y=pos.y, z=pos.z+dir.z}
			local n2 = minetest.get_node_or_nil(p)
			local def = minetest.registered_items[n2.name] or nil
			if not n2 or not def or not def.buildable_to then --remove the node if it shouldn't be placeable.
				minetest.remove_node(pos)
				return true
			end
		end,
	on_rightclick = function(pos, node, clicker)
			beds.on_rightclick(pos, clicker)
--			player:set_hp(-1)
	end,
})
