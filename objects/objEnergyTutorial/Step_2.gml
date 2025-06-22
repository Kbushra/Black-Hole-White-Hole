x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

if !instance_exists(objTextBox)
{
	if flag == 0
	{
		flag++;
		instance_create_layer(x + 341.5, y + 192, "Instances", objTextBox,
			{ text: "Low on energy? Staying idle\nallows you to slowly\nregen energy.\nAsteroids also give energy.", origin: id });
	}
	else if flag == 1
	{	
		global.pause = false;
		instance_activate_all();
		instance_destroy();
	}
}