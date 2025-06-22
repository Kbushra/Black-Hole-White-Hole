if progress >= 0
{
	with target
	{ for (var i = 0; i < contains; i++) { instance_create_layer(x, y, "Instances", objAsteroid); } }
	
	instance_destroy(target);
	global.deleters--;
	
	if !global.tutorial[3] { instance_create_layer(x, y, "Instances", objDeleteTutorial); }
	
	audio_play_sound(sndBlast, 10, false);
}

global.energy -= 300;
global.pause = false;
instance_activate_all();
instance_destroy();