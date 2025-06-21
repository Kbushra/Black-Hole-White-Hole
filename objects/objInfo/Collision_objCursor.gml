/* GUIDE FOR CREATING BOX

if mouse_check_button_pressed(mb_left) && !instance_exists(objInfo)
{
	instance_create_layer(x, y, "Instances", objInfo,
		{ info: "An info box", sprite: sprInfoBox });
}