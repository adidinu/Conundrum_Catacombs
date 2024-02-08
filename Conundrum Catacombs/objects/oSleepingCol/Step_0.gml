if place_meeting(oSleepingCol.x, oSleepingCol.y, oPlayer) && (timer > 0)
{
	timer -= 1;
	
	if (timer <= 0)
	{
		instance_destroy();
	}
}