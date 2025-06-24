// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function deactivate()
{
	instance_deactivate_object(objEnergyBar);
	instance_deactivate_object(objAsteroid);
	instance_deactivate_object(objAsterDust);
	instance_deactivate_object(objOtherHole);
}