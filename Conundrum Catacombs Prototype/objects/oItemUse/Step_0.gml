		var player_inst = instance_place(x, y, oPlayer);

		//if(InventorySearch(player_inst.inventory, type) != -1) && keyboard_check_pressed(ord("Q")) 
		{
			show_debug_message("item found");
			InventoryRemove(player_inst.inventory, type);
			return true;
		}
		else
		{
			show_debug_message("item not found");
			return false;
		}
	
