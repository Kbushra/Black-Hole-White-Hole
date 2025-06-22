depth = objPlayer.depth + 2;

counter = 0;

var collList = ds_list_create();
collision_circle_list(x, y, 48, objAsteroid, false, true, collList, false);

for (var i = 0; i < ds_list_size(collList); i++)
{ if collList[| i].image_alpha == 1 { counter++; } }

if counter >= required
{
	for (var i = 0; i < ds_list_size(collList); i++)
	{
		instance_destroy(collList[| i]);
		required--;
		if required <= 0 { break; }
	}
	
	if !global.tutorial[1]
	{ instance_create_layer(x, y, "Instances", objMaterialTutorial); }
	
	global.materials++;
	global.deleters++;
	audio_play_sound(sndDing, 10, false);
	instance_create_layer(x, y, "Instances", objTargetComplete);
	instance_destroy();
}