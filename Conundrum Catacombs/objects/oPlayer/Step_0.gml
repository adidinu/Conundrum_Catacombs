/// Player Input
keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A")) or (gamepad_axis_value(global.GP_NUM,gp_axislh) < 0);
keyRight = keyboard_check(vk_right) or keyboard_check(ord("D")) or (gamepad_axis_value(global.GP_NUM,gp_axislh) > 0); 
keyUp = keyboard_check(vk_up) or keyboard_check(ord("W")) or (gamepad_axis_value(global.GP_NUM,gp_axislv) < 0);
keyDown = keyboard_check(vk_down) or keyboard_check(ord("S")) or (gamepad_axis_value(global.GP_NUM,gp_axislv) > 0)
keyActivate = keyboard_check_pressed(ord("X")) or gamepad_button_check(global.GP_NUM,gp_face2);
keyItem = keyboard_check_pressed(ord("Z"));


inputDirection = point_direction(0,0,keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);


// Handles Player States
if (!global.gamePaused) PlayerStateFree();

// Handles the Light Torch System
PlayerReignite();

// Handles PowerUps

PowerUp();

// Handles Coins

Coins();

// Handles Lever Functionality

LeverUsage();

x += hSpeed;
y += vSpeed;



