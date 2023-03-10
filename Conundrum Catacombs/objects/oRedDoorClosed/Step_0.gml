// Inherit the parent event
event_inherited();

if(checkOpen()){
	sprite_index = sRedDoorOpen;
	instance_destroy(oRedDoorCol);
	instance_destroy(oShadowRedDoor);
	oRedDoorClosed.depth = 400;
	//instance_create_layer(x, y, "Player", oRedDoorOpen);
	//instance_destroy(id);
}