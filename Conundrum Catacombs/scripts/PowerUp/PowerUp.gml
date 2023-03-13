function PowerUp()
{
	var tleg_inst = instance_place(x, y, oTurkeyLeg);
	
	if (tleg_inst != noone) 
	{
		speedWalk = 1;
		myTime = 120;
		instance_destroy(tleg_inst);
	}
	
	if (myTime > 0)
	{
		myTime = myTime - delta_time/100000 
		show_debug_message(myTime);
	}
	
    if (myTime <= 0)
	{
		speedWalk = 0.7;
	}
	
}