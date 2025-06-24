x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

if !instance_exists(objTextBox)
{
	if flag == 0
	{
		flag++;
		instance_create_layer(x + 341.5, y + 192, "Instances", objTextBox,
			{ text: "You ate a fragile asteroid!\nThey are turned to dust\nwhen eaten and when spit out\n as dust take time to restore.\nMake sure to keep them\naway from the event horizon.", origin: id });
	}
	else if flag == 1
	{	
		global.pause = false;
		instance_activate_all();
		instance_destroy();
	}
}