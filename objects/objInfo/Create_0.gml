if instance_exists(objShop) || instance_exists(objIntro) || global.pause { instance_destroy(); exit; }

delay = 2;
global.pause = true;
deactivate();

audio_play_sound(sndText, 10, false);