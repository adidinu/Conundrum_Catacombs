// Inherit the parent event
event_inherited();

if(checkOpen()){
	sprite_index = sRedDoorOpen;
	instance_destroy(oRedDoorCol);
	instance_destroy(oShadowRedDoor);
	audio_play_sound(sfxKeyUnlock, 1, false, 0.1);
	//instance_create_layer(x, y, "Player", oRedDoorOpen);
	//instance_destroy(id);
}

if ( playerObj.y > y + sprite_height/2 )
{
	depth = playerObj.depth + 1 // appear in frnt of player
}
else
{
	depth = playerObj.depth - 1 // appear behind player
}