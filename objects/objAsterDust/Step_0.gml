x = clamp(x, 32, room_width - 32);
y = clamp(y, 32, room_height - 32);

time -= 1/60;
if time <= 0
{
	instance_create_layer(x, y, "Instances", objAsteroid, { fragile: true });
	instance_destroy();
}