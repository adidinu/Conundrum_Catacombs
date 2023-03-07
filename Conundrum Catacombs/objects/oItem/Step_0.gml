if (place_meeting(x, y, oPlayer))
{
	InventoryAdd(player.inventory, type);
	show_debug_message("work");
    instance_destroy();
}