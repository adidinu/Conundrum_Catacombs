event_inherited();

	if keyboard_check_pressed(ord("Z"))
	{
		if (InventorySearch(oPlayer.inventory, ITEMS.TURKEY_LEG) != -1)
		{
			InventoryRemove(oPlayer.inventory, ITEMS.TURKEY_LEG);
			with oPlayer
			{
			PowerUp();
			show_debug_message("works2");
			}
		}
	}