
function PlayerStateFree()
{
/// Movement

hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

/// Footstep Sounds

if (sprite_index == spriteRun) && (counterFootsteps == 0)
{
	audio_play_sound(choose(sndFootstep1,sndFoostep2,sndFootstep3,sndFootstep4,sndFootstep5,sndFootstep6,sndFootstep7), 1, false, 0.1);
	counterFootsteps = 45;  // number of steps to wait before playing sound
}
else if (counterFootsteps > 0)
counterFootsteps--;

/// Collision Check

PlayerCollision(oCol);
PlayerCollision(oBlueDoorCol);
PlayerCollision(oRedDoorCol);
PlayerCollision(oPressurePlateCol);

/// Update Sprite Index

var _oldSprite = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection;
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if (_oldSprite != sprite_index) localFrame = 0;

/// Update Image Index

PlayerAnimateSprite();

/// Change State - create state change conditions


// Reignite Torch
if (keyItem)
{
	show_debug_message("work")
	state = PlayerStateReignite();
}

// Use Lever
if (keyActivate)
{
	show_debug_message("work")
	state = PlayerUse()
}
}