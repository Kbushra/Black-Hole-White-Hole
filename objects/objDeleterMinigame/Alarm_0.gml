if progress >= 0
{
	with target
	{ for (var i = 0; i < contains; i++) { instance_create_layer(x, y, "Instances", objAsteroid); } }
	
	instance_destroy(target);
	global.deleters--;
}

global.pause = false;
instance_activate_all();
instance_destroy();