if(oPlayer.myTime > 0)
{
	draw_set_font(fntPixellari);
	draw_sprite_ext(sPowerUpArrow, 0, x - 8, y + 1, 0.4, 0.4, 0, c_white, 1);
	draw_text_transformed(x, y + 2, "You feel energized! " + string(oPlayer.myTime), 0.2, 0.2, 0);
}

if(oPlayer.countdownTimer > 0)
{
	draw_set_font(fntPixellari);
	draw_sprite_ext(sHourglass_Levers, 0, x - 8, y + 11, 0.4, 0.4, 0, c_white, 1);
	draw_text_transformed(x, y + 12,string(oPlayer.countdownTimer), 0.2, 0.2, 0);
}
