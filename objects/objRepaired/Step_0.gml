with(objAsteroid) { image_alpha -= 0.05; }
objEnergyBar.image_alpha -= 0.05;

if sprite_index == sprRepaired && image_index >= image_number - 1 { sprite_index = sprRSEnd; }

depth = -9999;