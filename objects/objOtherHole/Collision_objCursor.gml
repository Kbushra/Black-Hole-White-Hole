if mouse_check_button_pressed(mb_left) && !instance_exists(objInfo)
{
	var extraText = "";
	
	if differentCol
	{
		if global.swap { extraText = $"Can be deleted with deleter\nContains 5 asteroids"; }
		else { extraText = "Change to black to\ndelete"; }
		
		instance_create_layer(x, y, "Instances", objInfo,
			{ info: $"A white/black hole\nCollision is dangerous\n{extraText}", sprite: sprHoleI2 });
	}
	else
	{
		if !global.swap { extraText = $"Can be deleted with deleter\nContains 5 asteroids"; }
		else { extraText = "Change to black to\ndelete"; }
		
		instance_create_layer(x, y, "Instances", objInfo,
			{ info: $"Another black/white hole\nCollision black to black\nis dangerous\nCollision white to white\nis fine\n{extraText}", sprite: sprHoleI });
	}
}

if black && mouse_check_button_pressed(mb_right) && global.deleters > 0 && !instance_exists(objDeleterMinigame)
{ instance_create_layer(x, y, "Instances", objDeleterMinigame, { target: id }); }