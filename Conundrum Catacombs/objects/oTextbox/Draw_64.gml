/// @desc Create Text Box GUI

// Get current message data
var _arr = messages[| messageID];

var _name = _arr[MSG.NAME];
var _image = _arr[MSG.IMAGE];

// Set text font
draw_set_font(fntPixellari);

// Draw textbox
Draw9Slice(x,y, width, height, sTextbox, 0);
draw_text_transformed_color(x * 2 + 140 ,y + 90,"Press K to continue",0.5,0.5,0,c_white,c_white,c_white,c_white,1);


// Draw Position
var _drawX = x + padding;
var _drawY = y + padding;

// Draw Image

if (sprite_exists(_image)) 
{
	var _imageW = sprite_get_width(_image);
	var _imageH = sprite_get_height(_image);
	
	// Draw
	draw_sprite(_image, 0, _drawX + _imageW / 30 - 5, _drawY + _imageH / 30 - 5);
	
	// Offset drawing position of text
	_drawX += _imageW + padding;
}

// Text color 
draw_set_color(c_white);

// Draw Name
draw_text(_drawX, _drawY, _name);

_drawY += string_height(_name) + padding;

// Get maximum width for text
var _maxW = width / 2 + 400

// Draw Text
draw_text_ext_transformed(_drawX, _drawY, messageText, -1, _maxW,0.6,0.6,0);

// Reset
draw_set_color(c_white);