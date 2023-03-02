/// @desc Reset the extension module after being applied to a light
/// @arg light The light it was applied to
function ext_light_attenuation_reset(argument0) {

	var light = argument0;

	// Disable attenuation in the shader
	shader_set_uniform_i(global.u_AttenuationEnabled, false);


}
