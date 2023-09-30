/// @description Insert description here
// You can write your code in this editor

if(objToFollow != noone){
	objCollision = instance_place(x,y,objToFollow);
	move_towards_point(objToFollow.x - 10, objToFollow.y - 10, 1);
	if(objCollision){
		if(inventoryItem == true){
			objToAdd = objToFollow.type;
		}
		objToFollow = noone;
		instance_destroy(objCollision);
	}
}
else{
	direction = point_direction(x,y,oPlayer.x - 10,oPlayer.y - 10);
	if(instance_place(x,y,oPlayer)){
		instance_destroy(oGhost)
		if(inventoryItem == true){
			InventoryAdd(oPlayer.inventory, objToAdd);
		}
		else if(inventoryItem != true){
			if(inventoryItem == "CLOTH"){
				oLightTimer.image_xscale += 0.25;
				audio_play_sound(sfxFireBurstCloth, 0.3, false, 0.1);
				show_debug_message("CLOTH");
			}
			if(inventoryItem == "COIN"){
				global.coins += 1;
				show_debug_message(global.coins);
				audio_play_sound(sfxCoinsPickup, 1, false, 0.1);
				show_debug_message("COIN");
			}
		}
	}
}