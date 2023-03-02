// Decrease the object's horizontal scale by a small amount each step
if (burning == true){
	image_xscale -= 0.0002; 


// Stop shrinking the object once it reaches a certain size
	if (image_xscale <= 0) { 
		burning = false;
		image_xscale = 0;
	}
}