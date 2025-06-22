if global.gameEnd { instance_destroy(); }
global.gameEnd = true;

depth = -9999;
ended = false;

global.pause = true;
image_speed = 0;
visible = false;
alarm[0] = 60;