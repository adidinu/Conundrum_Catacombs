///  @desc Initialise & Global

randomize();

objPlayer = instance_find(oPlayer,0);

global.default_player = objPlayer;
global.gamePaused = false;
global.GP = gamepad_is_supported();
global.GP_NUM = 0;
global.coins = 0;

enum ITEMS
{
ROCK,
RED_KEY,
BLUE_KEY
}