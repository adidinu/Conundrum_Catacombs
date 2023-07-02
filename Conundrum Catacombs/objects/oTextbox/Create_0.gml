/// @desc Information Regarding messages

// Messages
messages = ds_list_create();
messageID = 0;

// Current Message
messageText = "";
messageChar = 0;
messageSpeed = 1;

// Message properties
enum MSG
{
	TEXT,
	NAME,
	IMAGE
}

// GUI dimensions
var _guiW = display_get_gui_width();
var _guiH = display_get_gui_height();

// Textbox dimensions
height = floor(_guiH * 0.16);
width = _guiW / 2;

// Position on screen
x = _guiW / 4;
y = _guiH - height - 600;

// Other properties
padding = 10;