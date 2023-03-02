/// @desc Create a new spot light
/// @arg x The X position of the light
/// @arg y The Y position of the light
/// @arg shadow_length The length of shadows cast by the light
/// @arg color The color of the light
/// @arg range The range of the light in pixels
/// @arg intensity The intensity of the light (must be positive) 
/// @arg direction The direction of the directional light
/// @returns The created light
function light_create_directional(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {

	// Gather the arguments
	var lx = argument0;
	var ly = argument1;
	var shadow_length = argument2;
	var col = argument3;
	var range = argument4;
	var intensity = argument5;
	var dir = argument6;

	// Create the light
	var light = light_create(lx, ly, shadow_length, eLightType.Directional, col, range, intensity);

	// Set directional light properties
	light[| eLight.Direction] = dir;

	return light;


}
