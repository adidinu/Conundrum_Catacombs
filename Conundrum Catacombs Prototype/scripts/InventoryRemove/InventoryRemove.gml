function InventoryRemove(rootObject,itemType)
{
	var _slot = InventorySearch(rootObject,itemType);
	if (_slot != -1)
	{
		with (rootObject) inventory[_slot] = -1;
		return true;
	}
	else return false
}