// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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