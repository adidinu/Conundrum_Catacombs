for (var i = 0; i < gamepad_get_device_count(); i++) {
	   if gamepad_is_connected(i) {
		   global.GP_NUM = i
		   gamepad_set_axis_deadzone(global.GP_NUM,0.5);
	   }
}

for ( var i = gp_face1; i < gp_axisrv; i++ ) {
    if ( gamepad_button_check( global.GP_NUM, i ) ){
		show_debug_message(i);
		global.inputType = INPUT_TYPES.GAMEPAD;
	}
}

if(
	gamepad_axis_value(global.GP_NUM,gp_axislh) < 0 ||
	gamepad_axis_value(global.GP_NUM,gp_axislh) > 0 ||
	gamepad_axis_value(global.GP_NUM,gp_axislv) < 0 ||
	gamepad_axis_value(global.GP_NUM,gp_axislv) > 0
){
	global.inputType = INPUT_TYPES.GAMEPAD;
}

if(keyboard_check(vk_anykey)) global.inputType = INPUT_TYPES.KEYBOARD;
