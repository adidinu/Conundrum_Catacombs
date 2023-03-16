if lever2Obj.lever2_used == true
{
	sprite_index = spriteUsed
}

else if playerObj.countdownTimer > 0
{
	sprite_index = spriteUsed;
	lever1_used = true;
	show_debug_message(lever1_used);
}

else 

{
	sprite_index = spriteUnused
	lever1_used = false;
	show_debug_message(lever1_used);
}


