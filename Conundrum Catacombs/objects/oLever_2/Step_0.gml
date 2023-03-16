if place_meeting(x,y,oPlayer) && playerObj.keyActivate && playerObj.countdownTimer > 0 && leverObj.lever1_used == true
{
	sprite_index = spriteUsed;
	lever2_used = true;
	instance_destroy(oDoor);
	instance_destroy(oLeverDoorCol);
	instance_destroy(oShadowLeverDoor);
}



