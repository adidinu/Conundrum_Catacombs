/// @desc Remove the light from the world
/// @arg light The light to remove
function light_remove_from_world(argument0) {

	var light = argument0;
	var index = ds_list_find_index(global.worldLights, light);
	if(index != -1) ds_list_delete(global.worldLights, index);


}
