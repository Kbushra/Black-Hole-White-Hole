depth = objPlayer.depth - 1;

if global.gameEnd { instance_destroy(); exit; }

if global.swap && stored
{
	stored = false;
	image_alpha = 1;
	x = objPlayer.x;
	y = objPlayer.y;
	audio_play_sound(sndSpit, 10, false);
	
	if !fragile { global.energy -= 100; }
	else
	{
		global.energy -= 200;
		instance_create_layer(x, y, "Instances", objAsterDust);
		instance_destroy();
	}
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
	var pull = global.swap ? 1 : global.pull;
	if dist != 0 && dist < 500 { speed = 256*pull / dist; speed = clamp(speed, 0, 5*pull); }
	else { speed = 0; }
	
	//Set dir
	if !global.swap { direction = point_direction(x, y, objPlayer.x, objPlayer.y); }
	else { direction = point_direction(x, y, objPlayer.x, objPlayer.y) + 180; }
}
else { speed = lerp(speed, 0, 0.1); }

if place_meeting(x, y, objPlayer)
{
	if !global.swap
	{
		if !stored
		{
			audio_play_sound(sndEat, 10, false);
			if !fragile { global.energy += 100; }
			if !global.tutorial[0] && !fragile { instance_create_layer(x, y, "Instances", objConsumeTutorial); }
			if !global.tutorial[5] && fragile { instance_create_layer(x, y, "Instances", objFragileTutorial); }
		}
		stored = true;
		x = lerp(x, objPlayer.x, 0.2);
		y = lerp(y, objPlayer.y, 0.2);
		image_alpha -= 0.05;
	}
	else { speed = 10; }
}