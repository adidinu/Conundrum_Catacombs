if place_meeting(x,y,inst_oPlayer) == place_meeting(x,y,inst_oLever1)
{
	draw_set_font(fntPixellari);
	draw_text_transformed(inst_oLever1.x, inst_oLever1.y - 5,"Press X to interact",0.12,0.12,0);
} 


if inst_oLever1.lever1_used != false
{
	draw_set_font(fntPixellari);
	draw_text_transformed(inst_oLever1.x, inst_oLever1.y + 5,string(inst_oPlayer.countdownTimer),0.1,0.1,0);
}

