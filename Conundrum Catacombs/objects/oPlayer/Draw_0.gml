draw_self();

if instance_exists(oTextNoteMM1) || instance_exists(oTextNoteMM2) && isActiveFader == true
{
	if place_meeting(oPlayer.x, oPlayer.y ,oTextNoteMM1) || place_meeting(oPlayer.x, oPlayer.y, oTextNoteMM2)
	{
		draw_text_transformed(x - 10, y + sprite_height/2 + 2, "Press X",0.2,0.2,image_angle);
	}
}


if instance_exists(oLeverTutorial) && isActiveFader == true
{
	if place_meeting(oPlayer.x, oPlayer.y, oLeverTutorial)
	{
		draw_text_transformed(x - 10, y + sprite_height/2 + 2, "Press X", 0.2, 0.2, image_angle);
	}
}