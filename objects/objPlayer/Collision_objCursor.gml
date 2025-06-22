if mouse_check_button_pressed(mb_left) && !instance_exists(objInfo)
{
	global.energy = floor(global.energy);
	
	instance_create_layer(x, y, "Instances", objInfo,
		{
			info: $"Black/White Hole 8P-192\nLink Energy = {global.energy}kJ/{global.maxEnergy}kJ\nMaterials = {global.materials}, Deleters = {global.deleters}\nGravity strength = {global.pull}\nEnergy regen = {global.energyDiminish*-1}\nWalk energy = {60*global.energyWalkMult}\nSpeed = {global.spd}",
			sprite: sprHoleI
		});
}

//Ending 1 - {global.endingName[0]}\nEnding 2 - {global.endingName[1]}\nEnding 3 - {global.endingName[2]}\nEnding 4 - {global.endingName[3]}\nEnding 5 - {global.endingName[4]}