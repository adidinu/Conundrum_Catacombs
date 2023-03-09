/// @description light_set_alpha(light, alpha)
/// @param light The light to affect.
/// @param alpha The alpha value from 0 to 1.
function light_set_alpha(argument0, argument1) {
	/*
	Sets the brightness of a light.
	*/

	var light, alpha;

	light = argument0;
	alpha = argument1;

	ds_list_set(light, 3, alpha);



}
