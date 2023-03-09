/// @description light_set_rotation(light, angle)
/// @param light The light to affect.
/// @param angle The rotation in degrees.
function light_set_rotation(argument0, argument1) {
	/*
	Sets the rotation of a light.
	*/

	var light, angle;

	light = argument0;
	angle = argument1;

	ds_list_set(light, 4, angle);



}
