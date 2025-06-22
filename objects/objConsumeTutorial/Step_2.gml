x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

if !memo && !instance_exists(objTextBox)
{
	if flag == 0
	{
		flag++;
		instance_create_layer(x + 341.5, y + 192, "Instances", objTextBox,
			{ text: "In your black form, you can\nconsume asteroids.\nWhen you become white, you\ncan spit out those asteroids.\nUse this to move them into\ntargets.", origin: id });
	}
	else if flag == 1 && delay <= 0
	{
		flag++;
		instance_create_layer(x + 341.5, y + 192, "Instances", objTextBox,
			{ text: "You also move faster when\nwhite, so use that to your\nadvantage.", origin: id });
	}
	else if flag == 2
	{	
		global.pause = false;
		instance_activate_all();
		instance_destroy();
	}
}

if memo { delay = 10; memo = false; }
delay--;