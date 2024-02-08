/// @desc Layer Managment

global.default_player = oPlayer;

instance_create_layer(x,y,"DeathScreen", oBlackScreen);

layer_set_visible("CollisionLayer", false);
layer_set_visible("ShadowCasterLayer", false);
layer_set_visible("DraftCol", false);


