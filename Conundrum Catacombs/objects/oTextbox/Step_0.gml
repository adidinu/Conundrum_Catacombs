/// @desc Get array

var _arr = messages[| messageID];

var _text = _arr[MSG.TEXT];

// Get message string
messageText = string_copy(_text, 1, messageChar);

// String not fully drawn
if (messageChar <= string_length(_text)) messageChar += messageSpeed;

// String fully drawn
else if global.default_player.keySkipText or gamepad_button_check(global.GP,gp_face2)
{
	if (messageID < ds_list_size(messages) - 1)
	{
		messageID++;
		messageChar = 0;
	}
	// Close Text box
	else
	{
		instance_destroy();
	}
}