ended = true;
global.endingName[3] = "Collision";
global.endingGot[3] = true;
instance_create_layer(x + 341.5, y + 336, "Instances", objButton, { effect: 3 });

audio_play_sound(sndClick, 10, false);