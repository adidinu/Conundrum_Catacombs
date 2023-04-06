if (place_meeting(x, y, oPlayer))
{
	InventoryAdd(player.inventory, type);
	show_debug_message("work");
    instance_destroy();
}

if ( player.y > y + sprite_height/2 )
{
	depth = player.depth - 1 // appear in frnt of player
}
else
{
	depth = player.depth + 1 // appear behind player
}