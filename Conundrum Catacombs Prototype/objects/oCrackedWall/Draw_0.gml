/// @description Insert description here
// You can write your code in this editor

draw_self();

if(place_meeting(x,y,oPlayer)){
	if(!taken){
		draw_set_font(fntPixellari);
		draw_text_transformed(x, y, "Press X to interact", 0.4, 0.4, 0);
		keyDown = keyboard_check(ord("X"));
		if(keyDown){
			if(item <= 0.50){
				light = instance_find(oLightTimer,0);
				light.image_xscale -= 0.25;
			//	draw_text(x,y-20, "GHINION");
			}
			else{
				player = instance_find(oPlayer,0);
				InventoryAdd(player.inventory, ITEMS.ROCK);
			}
			taken = true;
		}
	}
}

if(taken == true and afterText == false){
	if(place_meeting(x,y,oPlayer)){
		if(item > 0.50){
			draw_text_transformed(x, y, "You found a rock!", 0.4, 0.4, 0);
		}
		else{
			draw_text_transformed(x-10, y, "You damaged your torch!", 0.4, 0.4, 0);
		}
	}
	else{
		afterText = true;
	}
}