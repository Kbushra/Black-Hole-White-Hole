if global.gameEnd { instance_destroy(); }
global.gameEnd = true;

depth = -9999;
global.pause = true;

ended = false;
alarm[0] = 180;

audio_play_sound(sndParadox, 10, false);