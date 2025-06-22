depth = -999900;

if global.gameEnd { instance_destroy(); exit; }

draw_sprite_ext(sprWhite, 0, 0, 0, 500, 500, 0, c_black, 0.6);

x = camera_get_view_x(view_camera[0]) + 341.5;
y = camera_get_view_y(view_camera[0]) + 320;
draw_self();

draw_sprite(sprDeleterBar, 0, x + progress, y);
if mouse_check_button_pressed(mb_right) { progress += 30; }
progress--;

progress = clamp(progress, -192, 192);

draw_set_halign(fa_middle);
draw_set_valign(fa_center);
var time = floor(alarm[0]*10/60) / 10;
if !global.swap { draw_text(x, y - 48, $"Spam right click into the green zone to delete!\nTime: {time}s"); }
else { draw_text(x, y - 48, $"Spam right click into the pink zone to delete!\nTime: {time}s"); }