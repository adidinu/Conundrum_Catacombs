// handles dynamic lighting of the torch and its values
function DynamicLight()
{
	if (oLightTimer.image_xscale < 0.55) 
	{
	light[| eLight.Range] = 80;
    light[| eLight.Intensity] = 1.1;
	}
	if (oLightTimer.image_xscale < 0.25)
	{
	light[| eLight.Range] = 60;
    light[| eLight.Intensity] = 1.0;
	}
	if (oLightTimer.image_xscale > 0.25)
	{
	light[| eLight.Range] = 80;
    light[| eLight.Intensity] = 1.1;
	}
	if (oLightTimer.image_xscale > 0.55)
	{
	light[| eLight.Range] = 100;
	light[| eLight.Intensity] = 1.2;
	}


}