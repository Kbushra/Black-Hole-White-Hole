depth = objPlayer.depth - 3;

x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

if image_index >= 20 && flag == 0
{
	flag++;
	image_speed = 0;
	instance_create_layer(x + 341.5, y + 192, "Instances", objTextBox,
		{ text: "That's you!", origin: id });
}

if image_index >= 40 && flag == 1
{
	flag++;
	image_speed = 0;
	instance_create_layer(x + 341.5, y + 192, "Instances", objTextBox,
		{ text: "And that's your\nwhite counterpart.", origin: id });
}

if image_index > 45 && !memo && !instance_exists(objTextBox)
{	
	if flag == 2
	{
		instance_activate_all();
		instance_deactivate_object(objEnergyBar);
		
		flag++;
		instance_create_layer(x + 341.5, y + 192, "Instances", objTextBox,
			{ text: "As a newly born black hole,\nyou have been linked with a white hole.\n\nYou also find that the world is decaying.\n\nFill up dotted targets with asteroids\nto slowly fix the universe.\nRed ones give material, but ultimately\nthe white one is most important.", origin: id, big: true });
	}
	else if flag == 3 && delay <= 0
	{
		flag++;
		instance_create_layer(x + 341.5, y + 192, "Instances", objTextBox,
			{ text: "Every material you get also\ngives a free deleter, which\ncan delete other holes.\nRight click to use one.", origin: id });
	}
	else if flag == 4 && delay <= 0
	{
		flag++;
		instance_create_layer(x + 341.5, y + 192, "Instances", objTextBox,
			{ text: "WASD/Arrows to move\nSpace to swap holes\nQ to hide pointers\nE to place/move marker\nI to browse upgrades\nLeft click objects for\nmore info\nRight click objects to delete\nwhen possible", origin: id, big: true });
	}
	else if flag == 5
	{	
		global.pause = false;
		instance_activate_object(objEnergyBar);
		instance_destroy();
	}
}

if flag >= 3 { image_alpha -= 0.06; image_speed = 0; }

if memo
{
	if flag < 3 { image_speed = 1; } else { delay = 10; }
	memo = false;
}

delay--;