// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function deactivate()
{
	with(objEnergyBar) { instance_deactivate_object(id); }
	with(objAsteroid) { instance_deactivate_object(id); }
	with(objAsterDust) { instance_deactivate_object(id); }
	with(objOtherHole) { instance_deactivate_object(id); }
}