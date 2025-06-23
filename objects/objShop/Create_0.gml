delay = 2;
global.pause = true;
instance_deactivate_object(objEnergyBar);
instance_deactivate_object(objAsteroid);
instance_deactivate_object(objOtherHole);

x = camera_get_view_x(view_camera[0]) + 341.5;
y = camera_get_view_y(view_camera[0]) + 192;
button[0] = instance_create_layer(x, y - 64, "Instances", objButton, { effect: 0, reqMats: 1 });
button[1] = instance_create_layer(x, y + 32, "Instances", objButton, { effect: 1, reqMats: 1 });
button[2] = instance_create_layer(x, y + 128, "Instances", objButton, { effect: 2, reqMats: 2 });

offer[0] = "Slow N Steady (1 MAT)\nExtra 20kJ regen, 1.45x walk energy";
offer[1] = "Shortest Path (1 MAT)\n1.25x speed, 1.25x walk energy";
offer[2] = "Magnet (2 MAT) (ONE TIME)\nTwice the gravity, extra -30kJ regen";

audio_play_sound(sndText, 10, false);