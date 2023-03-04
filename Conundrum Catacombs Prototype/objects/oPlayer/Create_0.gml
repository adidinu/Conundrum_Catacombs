/// Player variables
collisionMap = layer_tilemap_get_id("Col")

image_speed = 0;
hSpeed = 0; // horizontal speed
vSpeed = 0; // vertical speeed
speedWalk = 0.7; // speed walk

spriteRun = sPlayerRun;
spriteIdle = sPlayer;
localFrame = 0;

inventory = instance_find(oInventory, 0);

attached_object = instance_create_layer(x, y,"Player", oTorchPlayer);


