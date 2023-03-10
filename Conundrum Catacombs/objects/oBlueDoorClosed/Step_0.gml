// Inherit the parent event
event_inherited();

if(checkOpen()){
	sprite_index = sBlueDoorOpen;
	instance_destroy(oBlueDoorCol);
	instance_destroy(oShadowBlueDoor);
	oBlueDoorClosed.depth = 400;
	//instance_create_layer(x, y, "Player", oRedDoorOpen);
	//instance_destroy(id);
}