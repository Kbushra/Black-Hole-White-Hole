ended = true;
global.endingName[1] = "Lost Bond";
global.endingGot[1] = true;
instance_create_layer(x + 440, y + 212, "Instances", objButton, { effect: 3 });

audio_play_sound(sndClick, 10, false);