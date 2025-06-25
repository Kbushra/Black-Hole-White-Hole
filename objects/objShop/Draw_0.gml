depth = -9999;

x = camera_get_view_x(view_camera[0]) + 341.5;
y = camera_get_view_y(view_camera[0]) + 192;

button[0].y = y - 72;
button[1].y = y + 20;
button[2].y = y + 128;
button[0].x = x;
button[1].x = x;
button[2].x = x;

draw_self();

draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_text(x, y - 116, offer[0]);
draw_text(x, y - 24, offer[1]);
draw_text(x, y + 76, offer[2]);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x - 220, y + 125, $"MATERIALS - {global.materials}");

if delay <= 0 && keyboard_check_pressed(ord("I"))
{
	global.pause = false;
	instance_activate_all();
	instance_destroy(objButton);
	instance_destroy();
}

delay--;