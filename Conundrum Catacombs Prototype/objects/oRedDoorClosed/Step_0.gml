/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(checkOpen()){
	sprite_index = sRedDoorOpen;
	instance_destroy(oDoorCol);
	oRedDoorClosed.depth = 250;
	//instance_create_layer(x, y, "Player", oRedDoorOpen);
	//instance_destroy(id);
}