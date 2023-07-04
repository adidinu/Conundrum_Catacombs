function LeverUsage()
{
	var lever_inst = instance_place(x,y, oLever_1);
	
	if (lever_inst != noone) && keyActivate && oLever_2.lever2_used != true
	{
		countdownTimer = 15;
	}
	
	if (countdownTimer > 0)
	{
		countdownTimer = max(countdownTimer - delta_time/1000000, 0);
	}

}