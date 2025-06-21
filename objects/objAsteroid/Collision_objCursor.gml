if mouse_check_button_pressed(mb_left) && image_alpha == 1 && !instance_exists(objInfo)
{
	instance_create_layer(x, y, "Instances", objInfo,
		{ info: $"Asteroid #{real(id)}\nSize {image_index+1}\nEating -> +40kJ\nSpitting -> -40kJ", sprite: sprAsterI });
}