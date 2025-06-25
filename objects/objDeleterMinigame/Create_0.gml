if global.pause { instance_destroy(); }
global.pause = true;

progress = -192;
alarm[0] = 180;
deactivate();

x = camera_get_view_x(view_camera[0]) + 341.5;
y = camera_get_view_y(view_camera[0]) + 320;