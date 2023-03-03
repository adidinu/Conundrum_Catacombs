/// Player Input
keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) or keyboard_check(ord("D")); 
keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(vk_space);
keyItem = keyboard_check_pressed(vk_control);

inputDirection = point_direction(0,0,keyRight - keyLeft, keyDown - keyUp);
//show_debug_message(inputDirection);
inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);

// Movement

hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);


// collision with walls

PlayerCollision(oCol);

// collision with door

PlayerCollision(oDoorCol);

x += hSpeed;
y += vSpeed;



// Update Sprite Index

var _oldSprite = sprite_index;
 if (inputMagnitude != 0)
{
	direction = inputDirection;
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if (_oldSprite != sprite_index) localFrame = 0;

// Update Image Index

PlayerAnimateSprite();


var cloth_inst = instance_place(x, y, oCloth);

if (cloth_inst != noone) 
{
   oLightTimer.image_xscale += 0.25;
   instance_destroy(cloth_inst);
}

if (oLightTimer.image_xscale > 1.0) 
{
	oLightTimer.image_xscale = 1.0;
}
