x = mouse_x
y = mouse_y


mouseClicked = mouse_check_button(mb_left);

rockCollision = instance_place(x,y,oRock);
if(rockCollision && mouseClicked){
	show_debug_message("Clicked on rock")
	instance_destroy(rockCollision)
}