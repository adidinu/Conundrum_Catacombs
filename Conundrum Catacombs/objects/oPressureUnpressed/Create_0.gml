playerObj = instance_find(oPlayer,0);

type = ITEMS.ROCK

function checkOpen()
{
	var player_inst = instance_place(x, y, oPlayer);
	
	if (player_inst != noone)
	{
		if(InventorySearch(player_inst.inventory, type) != -1)
		{
			InventoryRemove(player_inst.inventory, type);
			return true;
		}
		else
		{
			return false;
		}
	}
}

depth = 950;

