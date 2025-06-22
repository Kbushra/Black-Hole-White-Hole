var condition = differentCol && global.swap;
var condition2 = !differentCol && !global.swap;
black = condition || condition2;

if !differentCol
{
	var dist = distance_to_point(objPlayer.x, objPlayer.y);
	if black { dist *= 2 }
	
	if dist != 0 && dist < 500 { speed = 256*global.pull / dist; speed = clamp(speed, 0, 5*global.pull); }
	else { speed = 0; }
	
	if global.swap { direction = point_direction(x, y, objPlayer.x, objPlayer.y) + 180; }
	else
	{
		direction = point_direction(x, y, objPlayer.x, objPlayer.y);
		
		if place_meeting(x, y, objPlayer)
		{
			if !place_meeting(x, y, objTarget) { instance_create_layer(x, y, "Instances", objCollision); }
			else { instance_create_layer(x, y, "Instances", objSacrifice); }
		}
	}
}
else { if place_meeting(x, y, objPlayer) { instance_create_layer(x, y, "Instances", objParadox); } }