var _currentpos = path_position;
var isChasing = false;
var _currentX = path_get_x(pHunterMonsterL4_1, _currentpos);
var _currentY = path_get_y(pHunterMonsterL4_1, _currentpos);


if (point_distance(oHunter.x, oHunter.y, oPlayer.x, oPlayer.y) < 60) {
    if (!isChasing) 
	{
		old_path = path_position;
        isChasing = true;
		on_path = false;
		show_debug_message(on_path)
        path_end(); // Specify the path ID
		mp_potential_step_object(oPlayer.x, oPlayer.y, spd, oCol);
        last_pos_x = _currentX;
        last_pos_y = _currentY;
    }
    //mp_potential_step_object(oPlayer.x, oPlayer.y, spd, oCol);
} else {
    if (on_path == false && point_distance(oHunter.x, oHunter.y, last_pos_x, last_pos_y) < 5)
	{
        isChasing = false;
        on_path = true;
		path_start(pHunterMonsterL4_1, 1, path_action_reverse, 1);
		path_position = old_path;
		if path_ended = false
		{
			path_speed = 1;
		}
		else if path_end = true
		{
			path_reverse(pHunterMonsterL4_1);
			path_speed = -1;
		}
		

		
    } 
    
    if (!on_path)
	{ 
        mp_potential_step(last_pos_x, last_pos_y, spd, oCol); // Specify the path ID
    } 
}

	
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

if path_position = 1 
{
	path_ended = true;
}

else 
{
	if path_position = 0
	{
		path_ended = false;
	}
}