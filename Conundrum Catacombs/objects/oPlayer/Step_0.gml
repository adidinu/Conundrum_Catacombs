/// Player Input
keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) or keyboard_check(ord("D")); 
keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(vk_space);
keyItem = keyboard_check_pressed(ord("Z"));

inputDirection = point_direction(0,0,keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);

// Handles Player States
if (!global.gamePaused) PlayerStateFree();

// Handles the Light Torch System
PlayerReignite();

x += hSpeed;
y += vSpeed;