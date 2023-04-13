/// Player State
state = PlayerStateFree;

/// Player variables

image_speed = 0; // idle animation speed - keep 0
hSpeed = 0; // horizontal speed
vSpeed = 0; // vertical speeed
speedWalk = 3; // speed walk
myTime = 0;
counterFootsteps = 0;

/// Inventory

inventory = instance_find(oInventory, 0);

/// Lever Var

countdownTimer = 0;
countdownReset = 0;

/// Player Sprites

spriteReignite = sPlayerReignite;
spriteRun = sPlayerRun;
spriteIdle = sPlayer;
localFrame = 0;

/// GamePad Settings
gamepad_set_axis_deadzone(global.GP_NUM,0.5);










