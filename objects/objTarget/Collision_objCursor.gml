if mouse_check_button_pressed(mb_left) && !instance_exists(objInfo)
{
	instance_create_layer(x, y, "Instances", objInfo,
		{ info: $"Universe power source\nRequires: {required} asteroids\nContains: {counter} asteroids\nYour primary goal", sprite: sprTargI });
}