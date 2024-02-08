// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveCheckpoint(){


if (_timer <= 0) {
	
var file = file_text_open_write("checkpoint.txt");
	
	// Player Position
	file_text_write_real(file, x);
	file_text_write_real(file, y);
	
	// Player Torch Level
	file_text_write_real(file, oLightTimer.image_xscale);
	
	// Player Room
	
	var _roomname = room_get_name(room)
	
	show_debug_message(_roomname);
	
	file_text_write_string(file, _roomname);
	
	file_text_close(file);
	
	
	_timer = 60;
	
}

}
	
	

