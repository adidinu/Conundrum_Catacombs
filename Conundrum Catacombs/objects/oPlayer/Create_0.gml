/// Player State
state = PlayerStateFree;

/// Player variables

image_speed = 0; // idle animation speed - keep 0
hSpeed = 0; // horizontal speed
vSpeed = 0; // vertical speeed
speedWalk = 1.5; // speed walk

inventory = instance_find(oInventory, 0);

/// Player Sprites
spriteReignite = sPlayerReignite;
spriteRun = sPlayerRun;
spriteIdle = sPlayer;
localFrame = 0;



