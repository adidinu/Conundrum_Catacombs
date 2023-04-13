function Coins()
{
	var coin_inst = instance_place(x, y, oCoin);
	
	if (coin_inst != noone) 
	{
		// myCoins = currentCoins + 1;
		// currentCoins = myCoins;
		global.coins += 1;
		show_debug_message(global.coins);
		instance_destroy(coin_inst);
		audio_play_sound(sfxCoinsPickup, 1, false, 0.1);
	}
}