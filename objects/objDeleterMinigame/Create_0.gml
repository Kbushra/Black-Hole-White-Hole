if global.pause { instance_destroy(); }
global.pause = true;

progress = -192;
alarm[0] = 180;
instance_deactivate_object(objEnergyBar);
instance_deactivate_object(objAsteroid);

x = camera_get_view_x(view_camera[0]) + 341.5;
y = camera_get_view_y(view_camera[0]) + 320;