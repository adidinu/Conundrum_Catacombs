/// handle player collisions


function PlayerCollision(idCol)

{
	if place_meeting(x + hSpeed, y, idCol) // horizontal collision
	{
		hSpeed = 0;
	}
	
	if place_meeting(x, y + vSpeed, idCol) // vertical collision
	{
		vSpeed = 0;
	}
}