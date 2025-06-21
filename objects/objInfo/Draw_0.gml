depth = -9999;

x = camera_get_view_x(view_camera[0]) + 341.5;
y = camera_get_view_y(view_camera[0]) + 192;
draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_sprite(sprite, 0, x, y-96);
draw_text(x, y, info);
draw_text(x, y+96, "Click anywhere to exit");

if delay <= 0 && mouse_check_button_pressed(mb_left)
{
	global.pause = false;
	instance_activate_all();
	instance_destroy();
}

delay--;