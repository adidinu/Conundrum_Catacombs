// Inherit the parent event
event_inherited();

if(checkOpen()){
	sprite_index = sPressurePressedRock;
	instance_destroy(oPressurePlateCol);
	instance_destroy(oShadowPP);
	//instance_create_layer(x, y, "Player", oRedDoorOpen);
	//instance_destroy(id);
}