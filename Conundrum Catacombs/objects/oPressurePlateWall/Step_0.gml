if instance_exists(oPressurePlateCol)
{
	sprite_index = sPressurePlateWall
}
else
{
		sprite_index = sPressurePlateWallOpen
		oPressurePlateWall.depth = 200;
}

