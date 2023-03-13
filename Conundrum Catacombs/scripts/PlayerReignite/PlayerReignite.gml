
function PlayerReignite()
{
 var cloth_inst = instance_place(x, y, oCloth);

if (cloth_inst != noone) 
{
   oLightTimer.image_xscale += 0.25;
   instance_destroy(cloth_inst);
}

if place_meeting(x,y,oDraftCol)
{
	oLightTimer.image_xscale -= 0.001;
}

if (oLightTimer.image_xscale > 1.0) 
{
	oLightTimer.image_xscale = 1.0;
}
}