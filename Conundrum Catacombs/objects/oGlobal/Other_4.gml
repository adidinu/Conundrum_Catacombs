/// @desc Layer Managment


objPlayer = instance_find(oPlayer,0);

global.default_player = objPlayer;

layer_set_visible("CollisionLayer", false);
layer_set_visible("ShadowCasterLayer", false);
layer_set_visible("DraftCol", false);
