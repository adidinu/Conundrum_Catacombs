if(playerObj.myTime > 0){
	draw_set_font(fntPixellari);
	draw_sprite_ext(sPowerUpArrow, 0, x - 8, y + 1, 0.4, 0.4, 0, c_white, 1);
	draw_text_transformed(x, y + 2, "You feel energized! " + string(playerObj.myTime), 0.2, 0.2, 0);
}