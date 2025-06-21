if mouse_check_button_pressed(mb_left) && !instance_exists(objInfo)
{
	instance_create_layer(x, y, "Instances", objInfo,
		{ info: "Personal marker\n100kJ to place\n40kJ to move", sprite: sprMarkI });
}