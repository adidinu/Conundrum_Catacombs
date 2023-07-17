event_inherited();

	if keyboard_check_pressed(ord("Z"))
	{
		if (InventorySearch(oPlayer.inventory, ITEMS.TURKEY_LEG) != -1)
		{
			InventoryRemove(oPlayer.inventory, ITEMS.TURKEY_LEG);
			with oPlayer
			{
			PowerUp();
				audio_play_sound(sfxEating, 1, false, 0.2);	
			show_debug_message("works2");
			}
		}
	}