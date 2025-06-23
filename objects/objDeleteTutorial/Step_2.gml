x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

if global.gameEnd { instance_destroy(); exit; }

if !instance_exists(objTextBox)
{
	if flag == 0
	{
		flag++;
		instance_create_layer(x + 341.5, y + 192, "Instances", objTextBox,
			{ text: "After deleting a hole,\nyou can use their asteroids\nfor yourself!", origin: id });
	}
	else if flag == 1
	{	
		global.pause = false;
		instance_activate_all();
		instance_destroy();
	}
}