draw_set_font(fntPixellari);
draw_sprite_ext(sCoin, 0, x - 8, y + 1, 0.4, 0.4, 0, c_white, 1);
draw_text_transformed(x, y + 3.3, string(playerObj.currentCoins) , 0.2, 0.2, 0);