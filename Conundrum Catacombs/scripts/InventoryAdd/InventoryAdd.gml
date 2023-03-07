function InventoryAdd(rootObject,itemType)
{
var _slot = InventorySearch(rootObject, -1);
	if (_slot != -1)
	{
		with (rootObject) inventory[_slot] = itemType;
		return true;
	}
	else return false
}