ended = true;
global.endingName[4] = "Sacrifice";
global.endingGot[4] = true;
instance_create_layer(x + 500, y + 212, "Instances", objButton, { effect: 3 });

audio_play_sound(sndClick, 10, false);