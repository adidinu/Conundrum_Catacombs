if(playerObj.myTime > 0){
	draw_set_font(fntPixellari);
	draw_sprite(sPowerUpArrow, 0, x - 15, y);
	draw_text_transformed(x, y, "Elapsed Time for powerUP: " + string(playerObj.myTime), 0.2, 0.2, 0);
}