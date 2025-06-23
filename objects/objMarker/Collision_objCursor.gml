if mouse_check_button_pressed(mb_left) && !instance_exists(objInfo)
{
	instance_create_layer(x, y, "Instances", objInfo,
		{ info: "Personal marker\nPlacing -> -200kJ\nMoving -> -100kJ", sprite: sprMarkI });
}