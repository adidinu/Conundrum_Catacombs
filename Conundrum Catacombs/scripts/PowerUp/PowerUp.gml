function PowerUp()
{
	var tleg_inst = instance_place(x, y, oTurkeyLeg);
	
	if (tleg_inst != noone) 
	{
		speedWalk = 1;
		myTime = 30;
		instance_destroy(tleg_inst);
	}
	
	if (myTime > 0)
	{
		myTime = max(myTime - delta_time/1000000, 0);
	}
	
    if (myTime <= 0)
	{
		speedWalk = 0.7;
	}
	
}