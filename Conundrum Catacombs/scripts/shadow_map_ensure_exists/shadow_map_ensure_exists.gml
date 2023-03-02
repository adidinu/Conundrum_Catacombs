/// @desc Ensures the shadow map is valid, and creates it if necessary
/// @arg shadowMap The shadow map from enum eShadowMap
/// @returns True if the shadow map is valid, otherwise false
function shadow_map_ensure_exists(argument0) {

	var shadowMapType = argument0;

	var shadowMap;
	switch(shadowMapType) {
		case eShadowMap.Light: shadowMap = global.lightShadowMap; break;
		case eShadowMap.Global: shadowMap = global.worldShadowMap; break;
	}

	var camera = lighting_get_active_camera();
	var vw = camera[eLightingCamera.Width]
	var vh = camera[eLightingCamera.Height];

	if(shadowMap == undefined || !surface_exists(shadowMap) || surface_get_width(shadowMap) != vw || surface_get_height(shadowMap) != vh) {
		if(shadowMap != undefined && surface_exists(shadowMap)) {
			// Recreate the surface
			surface_free(shadowMap);
		}
	
		// Create the surface
		shadowMap = surface_create(vw, vh);
	
		// Reassign it
		switch(shadowMapType) {
			case eShadowMap.Light: global.lightShadowMap = shadowMap; break;
			case eShadowMap.Global: global.worldShadowMap = shadowMap; break;
		}
	}

	// It might have failed to create
	return surface_exists(shadowMap);


}
