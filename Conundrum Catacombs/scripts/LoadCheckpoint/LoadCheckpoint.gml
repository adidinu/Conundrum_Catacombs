// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LoadCheckpoint(){
	
	if (file_exists("checkpoint.txt")) {
		var file = file_text_open_read("checkpoint.txt");
		
		// Load Player x and y position
		x = file_text_read_real(file);
		y = file_text_read_real(file);
		
		// Load Player Torch Level
		oLightTimer.image_xscale = file_text_read_real(file);
		
		// Load Player Room
		var roomName = file_text_read_string(file);
		
		var _roomName = string_trim(roomName);
		
		switch (_roomName)
		{
			case "rMainMenu" : room_goto(rMainMenu); break;
			case "rLevel_1" : room_goto(rLevel_1); break;
			case "rLevel_2" : room_goto(rLevel_2); break;
			case "rLevel_3" : room_goto(rLevel_3); break;
			case "rLevel_4" : room_goto(rLevel_4); break;
			case "rLevel_5" : room_goto(rLevel_5); break;
		}
		
		file_text_close(file);
	}
	
}









