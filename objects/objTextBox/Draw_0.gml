depth = -9999;
if big { sprite_index = sprMenuBig; }

x = camera_get_view_x(view_camera[0]) + 341.5;
y = camera_get_view_y(view_camera[0]) + 192;
draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, text);
if !big { draw_text(x, y+96, "Click anywhere to exit"); }
else { draw_text(x, y+128, "Click anywhere to exit"); }

if mouse_check_button_pressed(mb_left) { origin.memo = true; instance_destroy(); }