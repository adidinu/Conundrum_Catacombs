///  @desc Initialise & Global

randomize();

objPlayer = instance_find(oPlayer,0);

global.gamePaused = false;
global.GP = gamepad_is_supported();
global.GP_NUM = 0;
global.coins = 0;
global.font = fntPixellari;
global.inputType = INPUT_TYPES.KEYBOARD;

show_debug_message("global initialized");
show_debug_message(global.coins);

enum ITEMS
{
ROCK,
RED_KEY,
BLUE_KEY,
TURKEY_LEG,
}

enum INPUT_TYPES
{
	KEYBOARD,
	GAMEPAD,
}