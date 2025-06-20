randomise();

for (var i = 0; i < 125; i++)
{ instance_create_layer(random(room_width), random(room_height), "Stars", objStar); }

global.maxEnergy = 5000;
global.energy = global.maxEnergy;