/// @description light_delete(light)
/// @param light The ds_list representing the light. Returned from light_create.
function light_delete(argument0) {
	/*
	Delete a light. This destroys all memory associated with a light.
	*/

	var light;

	light = argument0;

	ds_list_destroy(light);



}
