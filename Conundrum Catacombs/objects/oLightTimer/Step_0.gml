// Decrease the object's horizontal scale by a small amount each step

// follow camera
x = camera_get_view_x(view_camera[0]) + 140;
y = camera_get_view_y(view_camera[0]) + 165;

if (place_meeting(playerObj.x,playerObj.y, Bonfire)) // if player is near bonfire no light dmg is done
{
	burning = false;
} else
{
	burning = true;
}

if (burning == true)
{
	if(oPlayer.isSprinting){
		image_xscale -= 0.0015; 
	}
	else{
		image_xscale -= 0.0001;
	}
// Stop shrinking the object once it reaches a certain size
	if (image_xscale <= 0)
	{ 
		burning = false;
		image_xscale = 0;
	}
}

