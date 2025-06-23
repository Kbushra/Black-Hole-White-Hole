if global.pause { exit; }

if place_meeting(x, y, objPlayer)
{
	if !global.tutorial[4] { instance_create_layer(x, y, "Instances", objRadioactiveTutorial); }
	else { global.energy--; }
}