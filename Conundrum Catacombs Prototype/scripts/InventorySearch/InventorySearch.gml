function InventorySearch(rootObject,itemType)
{
	for (var i = 0; i < INVENTORY_SLOTS; i += 1)
	{
		if (rootObject.inventory[i] == itemType)
		{
			return(i);
		} 
	}
	return(-1)
}                    