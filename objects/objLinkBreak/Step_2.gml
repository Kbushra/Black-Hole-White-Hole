with(objAsteroid) { image_alpha -= 0.05; }
objEnergyBar.image_alpha -= 0.05;

x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

image_index = clamp(image_index, 0, image_number - 1);

depth = -9999;

if image_index >= 8 && !played[0] { audio_play_sound(sndPop, 10, false); played[0] = true; }
if image_index >= 11 && !played[1] { audio_play_sound(sndCrack, 10, false); played[1] = true; }