depth = -999;
x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

if image_index >= 3 && !swapped
{
	swapped = true;
	if shader_current() == -1 { shader_set(shLight); }
	else { shader_reset(); }
}

if image_index >= 6 { instance_destroy(); }