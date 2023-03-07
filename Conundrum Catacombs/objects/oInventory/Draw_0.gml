draw_sprite_stretched
(
   sInventory,
   0,
   x-5,
   y-5,
   12+rowLenght*16,
   12+(((INVENTORY_SLOTS-1) div rowLenght)+1)*3
);

for (var i = 0; i < INVENTORY_SLOTS; i += 1)
{
	var xx = x + (i mod rowLenght) * 20 - 7;
	var yy = y + (i div rowLenght) * 20 - 8;
	draw_sprite(sSlot, 0, xx, yy)
	if (inventory[i] != -1)
	{
		draw_sprite(sItems,inventory[i],xx,yy);
	}
}

