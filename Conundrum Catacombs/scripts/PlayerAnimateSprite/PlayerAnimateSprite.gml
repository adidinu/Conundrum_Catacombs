// Update_Sprite
function PlayerAnimateSprite()
{
	
var _cardinalDirection = round(direction/90);
var _totalFrames = sprite_get_number(sprite_index) / 4;
image_index = localFrame + (_cardinalDirection * _totalFrames);
localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

// If animation would loop on next game step

if (localFrame >= _totalFrames)
{
	animationEnd = true;
	localFrame -= _totalFrames;
} else animationEnd = false;

}
