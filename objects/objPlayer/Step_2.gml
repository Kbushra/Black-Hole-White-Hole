if !global.pause && random(1) < 0.02 { instance_create_layer(x, y, "Instances", objParticle); }

if random(1) < 0.01
{
	instance_create_layer(x + random_range(-391.5, 391.5), y + random_range(-192, 192),
		"Instances", objAura);
}

if random(1) < 0.03
{
	instance_create_layer(random(room_width), random(room_height),
		"Instances", objDust);
}