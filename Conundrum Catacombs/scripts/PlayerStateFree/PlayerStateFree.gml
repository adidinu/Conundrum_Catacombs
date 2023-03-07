
function PlayerStateFree()
{
/// Movement

hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

/// Collision Check

PlayerCollision(oCol);
PlayerCollision(oBlueDoorCol);
PlayerCollision(oRedDoorCol);
PlayerCollision(oPPlateWallCol);

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