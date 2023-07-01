if place_meeting(x,y,oPlayer) && playerObj.keyActivate && playerObj.countdownTimer > 0 && leverObj.lever1_used == true
{
	sprite_index = spriteUsed;
	lever2_used = true;
	instance_destroy(oLeverDoor);
	instance_destroy(oLeverDoorCol);
	instance_destroy(oShadowLeverDoor);
	if soundPlayed == false
	{
				show_debug_message("muie2");
		audio_play_sound(sfxLever_Pull, 1, false, 0.3);
		soundPlayed = true;
	}
}

if ( y > playerObj.y )
{
	depth = playerObj.depth - 1 // appear in frnt of player
}
else
{
	depth = playerObj.depth + 1 // appear behind player
}


