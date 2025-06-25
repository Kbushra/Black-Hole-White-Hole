delay = 2;
global.pause = true;
deactivate();

x = camera_get_view_x(view_camera[0]) + 341.5;
y = camera_get_view_y(view_camera[0]) + 192;
button[0] = instance_create_layer(x, y - 72, "Instances", objButton, { effect: 0, reqMats: 1 });
button[1] = instance_create_layer(x, y + 20, "Instances", objButton, { effect: 1, reqMats: 1 });
button[2] = instance_create_layer(x, y + 128, "Instances", objButton, { effect: 2, reqMats: 1 });

offer[0] = "Slow N Steady (1 MAT)\nExtra 20kJ regen, 40kJ walk energy increase";
offer[1] = "Shortest Path (1 MAT)\n1.25x speed, 20kJ walk energy increase";
offer[2] = "Can't Stop (1 MAT) (ONE TIME)\n140kJ walk energy decrease,\nstopping gives extra -1000kJ regen";

audio_play_sound(sndText, 10, false);