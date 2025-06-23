if mouse_check_button_pressed(mb_left) && !instance_exists(objInfo)
{
	instance_create_layer(x, y, "Instances", objInfo,
		{ info: $"Secondary power source\nRequires: {required} asteroids\nContains: {counter} asteroids\nGives 1 material\nGives 200kJ", sprite: sprMiniTargI });
}