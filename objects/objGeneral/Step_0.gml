if keyboard_check_pressed(vk_f4) { window_set_fullscreen(!window_get_fullscreen()); }

if keyboard_check_pressed(vk_space)
{ instance_create_layer(x, y, "Instances", objTransition); }