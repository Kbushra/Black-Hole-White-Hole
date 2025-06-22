x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);
draw_self();

draw_set_halign(fa_middle);
draw_set_valign(fa_center);
if ended
{
	draw_text(x + 341.5, y + 192, $"Ending 1 - {global.endingName[0]}\nEnding 2 - {global.endingName[1]}\nEnding 3 - {global.endingName[2]}\nEnding 4 - {global.endingName[3]}\nEnding 5 - {global.endingName[4]}");
	draw_text(x + 341.5, y + 304, "Restart");
}