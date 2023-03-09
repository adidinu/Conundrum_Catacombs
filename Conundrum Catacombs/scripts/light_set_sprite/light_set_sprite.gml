/// @description light_set_sprite(light, sprite)
/// @param light The light to affect.
/// @param sprite The sprite index to assign to this light.
function light_set_sprite(argument0, argument1) {
	/*
	Sets the light to a new sprite.
	If this sprite is larger than the sprite that the light was created with then it will be cut off.
	*/

	var light, sprite, scale, max_distance;

	light = argument0;
	sprite = argument1;

	scale = ds_list_find_value(light, 1);

	max_distance = max(sprite_get_width(sprite), sprite_get_height(sprite)) * scale;

	ds_list_set(light, 0, sprite);
	ds_list_set(light, 6, max_distance);



}
