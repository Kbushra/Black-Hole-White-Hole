if instance_exists(objShop) || instance_exists(objIntro) || global.pause { instance_destroy(); exit; }

delay = 2;
global.pause = true;
instance_deactivate_object(objEnergyBar);
instance_deactivate_object(objAsteroid);
instance_deactivate_object(objOtherHole);

audio_play_sound(sndText, 10, false);