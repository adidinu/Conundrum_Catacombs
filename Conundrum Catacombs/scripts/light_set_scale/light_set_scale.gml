/// @description light_set_scale(light, scale)
/// @param light The light to affect.
/// @param scale Scale of the light sprite.
function light_set_scale(argument0, argument1) {
	/*
	This will scale the light sprite.
	Notice that this will not change the size of the surface the light is drawn on, only the sprite itself.
	*/

	var light, scale, sprite, max_distance;

	light = argument0;
	scale = argument1;

	sprite = ds_list_find_value(light, 0);

	max_distance = max(sprite_get_width(sprite), sprite_get_height(sprite)) * scale;

	ds_list_set(light, 1, scale);
	ds_list_set(light, 6, max_distance);



}
