if mouse_check_button_pressed(mb_left) && !instance_exists(objInfo)
{
	contains = 0;
	with (objAsteroid) { if place_meeting(x, y, objPlayer) { other.contains++; } }
	
	global.energy = floor(global.energy);
	
	if global.diminAddOn != 0 { var extra = $" (-{global.diminAddOn}kJ)"; }
	else { var extra = ""; }
	
	instance_create_layer(x, y, "Instances", objInfo,
		{
			info: $"Black/White Hole 8P-192\nLink Energy = {global.energy}kJ/{global.maxEnergy}kJ\nMaterials = {global.materials}, Deleters = {global.deleters}\nGravity strength = {global.pull}\nEnergy regen = {global.energyDiminish*-1}kJ/s{extra}\nWalk energy cost = {global.walkEnergy}kJ/s\nContains {contains} asteroids",
			sprite: sprHoleI
		});
}