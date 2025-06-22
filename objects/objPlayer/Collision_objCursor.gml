if mouse_check_button_pressed(mb_left) && !instance_exists(objInfo)
{
	global.energy = floor(global.energy);
	
	instance_create_layer(x, y, "Instances", objInfo,
		{
			info: $"Black/White Hole 8P-192\nLink Energy = {global.energy}kJ/{global.maxEnergy}kJ\nMaterials = {global.materials}, Deleters = {global.deleters}\nGravity strength = {global.pull}\nEnergy regen = {global.energyDiminish*-1}kJ/s\nWalk energy cost = {60*global.energyWalkMult}kJ/s\nSpeed = {global.spd}",
			sprite: sprHoleI
		});
}