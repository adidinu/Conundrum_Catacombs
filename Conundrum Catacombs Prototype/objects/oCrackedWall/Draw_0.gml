/// @description Insert description here
// You can write your code in this editor

draw_self();

if(place_meeting(x,y,oPlayer)){
	if(!taken){
		draw_text(x,y-20,"Press X to interact");
		keyDown = keyboard_check(ord("X"));
		if(keyDown){
			if(item <= 0.25){
				light = instance_find(oLightTimer,0);
				light.image_xscale -= 0.25;
				draw_text(x,y-20, "GHINION");
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
		if(item > 0.25){
			draw_text(x,y-20, "PIATRA");
		}
		else{
			draw_text(x,y-20, "GHINION");
		}
	}
	else{
		afterText = true;
	}
}