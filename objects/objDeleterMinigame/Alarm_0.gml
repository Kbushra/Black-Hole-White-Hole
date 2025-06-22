if progress >= 0
{
	with target
	{ for (var i = 0; i < contains; i++) { instance_create_layer(x, y, "Instances", objAsteroid); } }
	
	instance_destroy(target);
	global.deleters--;
}
instance_destroy();
instance_activate_all();