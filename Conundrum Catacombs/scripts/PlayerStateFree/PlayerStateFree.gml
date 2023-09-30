
function PlayerStateFree()
{
/// Movement

if (keySprint)
{
	PlayerStateSprint();
}

	if global.midTransition = true
{
	PlayerStateFreeze();
	
}
else if (instance_exists(oTextbox))
{
	PlayerStateFreeze();
}	
	else
	{
	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);
	}
	/// Footstep Sounds

	if (sprite_index == spriteRun) && (counterFootsteps == 0)
	{
		audio_play_sound(choose(sndFootstep1,sndFoostep2,sndFootstep3,sndFootstep4,sndFootstep5,sndFootstep6,sndFootstep7), 1, false, 0.05);
		counterFootsteps = 45;  // number of steps to wait before playing sound
	}
	else if (counterFootsteps > 0)
	counterFootsteps--;

	/// Collision Check

	PlayerCollision(oCol);
	PlayerCollision(oBlueDoorCol);
	PlayerCollision(oRedDoorCol);
	PlayerCollision(oPressurePlateCol);
	PlayerCollision(oLeverDoorCol);
	PlayerCollision(oHunter);

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
		state = PlayerStateReignite();
	}

	// Use Lever
	if (keyActivate)
	{
		state = PlayerUse()
	}
}