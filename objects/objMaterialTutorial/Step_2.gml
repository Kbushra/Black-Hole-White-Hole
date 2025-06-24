x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

if global.gameEnd { instance_destroy(); exit; }

if !memo && !instance_exists(objTextBox)
{
	if flag == 0
	{
		flag++;
		instance_create_layer(x + 341.5, y + 192, "Instances", objTextBox,
			{ text: "Every red target gives a\npiece of material, which can be\nused in the shop!\nPress I to view the shop.", origin: id, big: true });
	}
	else if flag == 1 && delay <= 0
	{
		flag++;
		instance_create_layer(x + 341.5, y + 192, "Instances", objTextBox,
			{ text: "Every material you get also\ngives a free deleter, which\ncan delete other black holes.\nRight click to use one for 400kJ.", origin: id });
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