///  @desc Initialise & Global

randomize();

global.gamePaused = false;
global.GP = gamepad_is_supported();
global.GP_NUM = 0;

for (var i = 0; i < gamepad_get_device_count(); i++) {
	   if gamepad_is_connected(i) {
		   global.GP_NUM = i
		   gamepad_set_axis_deadzone(0,0.5);
	   }
}

enum ITEMS
{
ROCK,
RED_KEY,
BLUE_KEY
}