///  @desc Initialise & Global

randomize();

global.gamePaused = false;
global.GP = gamepad_is_supported();
global.GP_NUM = 0

enum ITEMS
{
ROCK,
RED_KEY,
BLUE_KEY
}