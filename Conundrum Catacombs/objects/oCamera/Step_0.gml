/// @desc Update Camera


// Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

// Update Object Positionn
x += (xTo - x) / 10;
y += (yTo - y) / 10;

// Keep Camera Center inside room
x = clamp(x,viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y,viewHeightHalf, room_height - viewHeightHalf);

// ScreeShake

x += random_range (-shakeRemain, shakeRemain);
y += random_range (-shakeRemain, shakeRemain);

shakeRemain = max(0, shakeRemain - ((1/shakeLenght) * shakeMagnitude));

camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);

