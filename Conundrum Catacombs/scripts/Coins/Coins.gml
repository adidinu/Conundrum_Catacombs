function Coins()
{
	var coin_inst = instance_place(x, y, oCoin);
	
	if (coin_inst != noone) 
	{
		myCoins = currentCoins + 1;
		currentCoins = myCoins;
		show_debug_message(myCoins);
		instance_destroy(coin_inst);
	}
}