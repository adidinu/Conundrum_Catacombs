/// @desc Add an extension to the light
/// @arg light The light to check
/// @arg ext The extension module to add
function light_add_extension(argument0, argument1) {

	var light = argument0;
	var ext = argument1;

	var list = light[| eLight.ExtensionModules];
	if(list == undefined) {
		list = ds_list_create();
		light[| eLight.ExtensionModules] = list;
	}

	ds_list_add(list, ext);


}
