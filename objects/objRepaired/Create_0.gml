if global.gameEnd { instance_destroy(); }
global.gameEnd = true;

depth = -9999;
global.pause = true;

ended = false;
alarm[0] = 60;

visible = false;
image_speed = 0;