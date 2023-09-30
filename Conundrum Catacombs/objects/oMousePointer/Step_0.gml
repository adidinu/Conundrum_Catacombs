input_mouse_moved()

mouseClicked = mouse_check_button(mb_left);

objCollision = instance_place(x,y,oItem);
coinCollision = instance_place(x,y,oCoin);
clothCollision = instance_place(x,y,oCloth);

if(mouseClicked){
	if(instance_find(oGhost,0) == noone){
		show_debug_message("created ghost");
		if(objCollision){
			instance_create_layer(oPlayer.x, oPlayer.y, layer_get_id("PlayerLayer"), oGhost);
			createdGhost = instance_find(oGhost,0);
			
			createdGhost.objToFollow = objCollision;
		}
		if(coinCollision){
			instance_create_layer(oPlayer.x, oPlayer.y, layer_get_id("PlayerLayer"), oGhost);
			createdGhost = instance_find(oGhost,0);
			
			createdGhost.objToFollow = coinCollision;
			createdGhost.inventoryItem = "COIN";
		}
		if(clothCollision){
			instance_create_layer(oPlayer.x, oPlayer.y, layer_get_id("PlayerLayer"), oGhost);
			createdGhost = instance_find(oGhost,0);
			
			createdGhost.objToFollow = clothCollision;
			createdGhost.inventoryItem = "CLOTH";
		}
	}
}

// get distance from fake mouse to real mouse
var moving = point_distance(mx, my, mouse_x, mouse_y);

// update positions of fake mouse
mx = mouse_x;
my = mouse_y;

// if they are apart
if (moving) {
	isAiming = true;
	timeout = 2;

	if(global.inputType == INPUT_TYPES.KEYBOARD){
		x = mouse_x;
		y = mouse_y;
	}
	
	//if(global.inputType == INPUT_TYPES.GAMEPAD){
	//	x = oPlayer.x;
	//	y = oPlayer.y;
	//}
}

if(global.inputType == INPUT_TYPES.GAMEPAD){
	keyLeft = (gamepad_axis_value(global.GP_NUM,gp_axisrh) < 0);
	keyRight =(gamepad_axis_value(global.GP_NUM,gp_axisrh) > 0); 
	keyUp = (gamepad_axis_value(global.GP_NUM,gp_axisrv) < 0);
	keyDown =(gamepad_axis_value(global.GP_NUM,gp_axisrv) > 0)
	
	show_debug_message("h: {0}", gamepad_axis_value(global.GP_NUM,gp_axisrh));
	show_debug_message("v: {0}", gamepad_axis_value(global.GP_NUM,gp_axisrv));
	
	if(keyLeft){
		x -= 5;
	}
	if(keyRight){
		x += 5;
	}
	if(keyUp){
		y -= 5;
	}
	if(keyDown){
		y += 5;
	}
}

// set timer to stop drawing after 2 seconds of not moving
timeout = max(timeout - delta_time/1000000, 0);

if(timeout <= 0){
	isAiming = false;
}