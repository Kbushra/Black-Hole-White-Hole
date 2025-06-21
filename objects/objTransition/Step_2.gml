depth = -9999999;
x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

if image_index >= 3 && !swapped
{
	swapped = true;
	global.swap = !global.swap;
}

if image_index >= 8 { instance_destroy(); }