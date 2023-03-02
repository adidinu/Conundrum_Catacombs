/// @desc Add the light to the world, taking it into account for compositing
/// @arg light The light to add
function light_add_to_world(argument0) {

	var light = argument0;
	ds_list_add(global.worldLights, light);


}
