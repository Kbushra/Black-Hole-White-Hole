if mouse_check_button_pressed(mb_left) && image_alpha == 1 && !instance_exists(objInfo)
{
	if !fragile { var extraText = $"Eating -> +100kJ\nSpitting -> -100kJ"; }
	else { var extraText = $"Eating -> +0kJ\nSpitting -> -200kJ"; }
	
	instance_create_layer(x, y, "Instances", objInfo,
		{ info: $"Asteroid #{real(id)}\nSize = {image_index+1}\n{extraText}", sprite: sprAsterI });
}