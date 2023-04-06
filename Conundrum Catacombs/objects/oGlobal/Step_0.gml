for (var i = 0; i < gamepad_get_device_count(); i++) {
	   if gamepad_is_connected(i) {
		   global.GP_NUM = i
		   gamepad_set_axis_deadzone(global.GP_NUM,0.5);
	   }
}