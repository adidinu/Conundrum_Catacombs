if lever2Obj.lever2_used == true
{
	sprite_index = spriteUsed
}

else if playerObj.countdownTimer > 0
{
	sprite_index = spriteUsed; 
	lever1_used = true;
	if soundPlayed == false
	{
		show_debug_message("muie1");
		audio_play_sound(sfxLever_Pull, 1, false, 1);
		soundPlayed = true;
	}
}
else 
{
	soundPlayed = false;
	sprite_index = spriteUnused
	lever1_used = false;
}

if ( y > playerObj.y )
{
	depth = playerObj.depth - 1 // appear in frnt of player
}
else
{
	depth = playerObj.depth + 1 // appear behind player
}


