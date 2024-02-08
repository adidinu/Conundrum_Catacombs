var _currentpos = path_position;
var isChasing = false;
var _currentX = path_get_x(pTeleporterMonsterL4_1, _currentpos);
var _currentY = path_get_y(pTeleporterMonsterL4_1, _currentpos);


if (point_distance(oTeleporter.x, oTeleporter.y, oPlayer.x, oPlayer.y) < 60) {
    if (!isChasing) 
	{
		old_path = path_position;
        isChasing = true;
		on_path = false;
        path_end(); // Specify the path ID
		mp_potential_step_object(oPlayer.x, oPlayer.y, spd, all);
        last_pos_x = _currentX;
        last_pos_y = _currentY;
    } 
	if (point_distance(oTeleporter.x,oTeleporter.y, oPlayer.x, oPlayer.y) < 1)
	{
		random_number = irandom(3);
		show_debug_message(random_number);
		if random_number == 1
		{
			oPlayer.x = 324
			oPlayer.y = 467
			instance_destroy();
		}
		if random_number == 2
		{
			oPlayer.x = 195
			oPlayer.y = 936
			instance_destroy();
		}
		if random_number == 3
		{
			oPlayer.x = 593
			oPlayer.y = 150
			instance_destroy();
		}
		if random_number == 0
		{
			oPlayer.x = 615
			oPlayer.y = 481
			instance_destroy();
		}
		instance_create_layer(0, 0, layer_get_id("DeathScreen"), oBlackScreen);
	}
    //mp_potential_step_object(oPlayer.x, oPlayer.y, spd, oCol);
} else {
    if (on_path == false && point_distance(oTeleporter.x, oTeleporter.y, last_pos_x, last_pos_y) < 5)
	{
        isChasing = false;
        on_path = true;
		path_start(pTeleporterMonsterL4_1, 1, path_action_reverse, 1);
		path_position = old_path;
		if path_ended = false
		{
			path_speed = 1;
		}
		else if path_end = true
		{
			path_reverse(pTeleporterMonsterL4_1);
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

if ( global.default_player.y > y + sprite_height/2 )
{
	depth = global.default_player.depth + 1 // appear in frnt of player
}
else
{
	depth = global.default_player.depth - 1 // appear behind player
}

