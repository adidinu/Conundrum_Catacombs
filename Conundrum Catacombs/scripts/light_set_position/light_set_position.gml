/// @description light_set_position(light, x, y)
/// @param light The light to affect.
/// @param x The x position of the light.
/// @param y The y position of the light.
function light_set_position(argument0, argument1, argument2) {
	/*
	This will move the light to the new position.
	*/

	var light, x_pos, y_pos;

	light = argument0;
	x_pos = argument1;
	y_pos = argument2;

	ds_list_set(light, 7, x_pos);
	ds_list_set(light, 8, y_pos);



}
