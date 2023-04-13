// Inherit the parent event
event_inherited();

if(checkOpen()){
	sprite_index = sPressurePressedRock;
	instance_destroy(oPressurePlateCol);
	instance_destroy(oShadowPP);
	audio_play_sound(sfxHidden_wall_Opening, 1, false, 0.3);
	//instance_create_layer(x, y, "Player", oRedDoorOpen);
	//instance_destroy(id);
}