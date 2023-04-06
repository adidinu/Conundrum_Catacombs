if objL2.lever2_used == true
{
	sprite_index = opendoor;
}

if ( playerObj.y > y + sprite_height/2 )
{
	depth = playerObj.depth + 1 // appear in frnt of player
}
else
{
	depth = playerObj.depth - 1 // appear behind player
}