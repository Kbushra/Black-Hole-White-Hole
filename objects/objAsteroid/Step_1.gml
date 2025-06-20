if shader_current() != -1 && stored
{
	global.energy -= 40;
	stored = false;
	image_alpha = 1;
	x = objPlayer.x;
	y = objPlayer.y;
}

//Keep in room
x = clamp(x, 32, room_width - 32);
y = clamp(y, 32, room_height - 32);

//Move asteroids off eachother
if place_meeting(x, y, objAsteroid) { direction += random_range(20, 40); } 

if !place_meeting(x, y, objTarget) || place_meeting(x, y, objPlayer)
{
	//Set speed
	var dist = distance_to_point(objPlayer.x, objPlayer.y);
	if dist != 0 && dist < 1024 { speed = 256 / dist; speed = clamp(speed, 0, 5); }
	else { speed = 0; }
	
	//Set dir
	if shader_current() == -1 { direction = point_direction(x, y, objPlayer.x, objPlayer.y); }
	else { direction = point_direction(x, y, objPlayer.x, objPlayer.y) + 180; }
}
else { speed = lerp(speed, 0, 0.1); }

if place_meeting(x, y, objPlayer)
{
	if shader_current() == -1
	{
		if !stored { global.energy += 40; }
		stored = true;
		x = lerp(x, objPlayer.x, 0.2);
		y = lerp(y, objPlayer.y, 0.2);
		image_alpha -= 0.05;
	}
	else { speed = 10; }
}