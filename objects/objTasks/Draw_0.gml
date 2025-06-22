x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

draw_set_font(fntSmall);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_sprite(sprMenuTasks, 0, x+16, y+192);

var targetText = instance_number(objMiniTarget) > 0 ? "\nFind red targets\nFind 4 asteroids to\npower red target" : "";
var materialText = global.materials > 0 ? "\nPower some\nupgrades in the shop." : "";
var deleterText = global.deleters > 0 && instance_number(objOtherHole) > 0 ? "\nFind and delete other\nholes" : "";

draw_text(x+32, y+48, $"Main objective:\nFind 10 asteroids to\npower white target\n\nSide objectives:{targetText}{materialText}{deleterText}");
draw_text(x+32, y+314, "TAB to toggle");

draw_set_font(fntMain);