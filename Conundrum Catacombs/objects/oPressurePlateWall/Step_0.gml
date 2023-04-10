if instance_exists(oPressurePlateCol)
{
	sprite_index = sPressurePlateWall
	oPressurePlateWall.depth = 950;
}
else
{
		sprite_index = sPressurePlateWallOpen
		oPressurePlateWall.depth = 200;
}

