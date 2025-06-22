draw_self();

draw_set_halign(fa_middle);
draw_set_valign(fa_center);
if ended
{
	draw_set_color(c_black);
	
	draw_text(x + 240, y + 192, $"Ending 1 - {global.endingName[0]}\nEnding 2 - {global.endingName[1]}\nEnding 3 - {global.endingName[2]}\nEnding 4 - {global.endingName[3]}\nEnding 5 - {global.endingName[4]}");
	draw_text(x + 440, y + 176, "Restart");
	
	draw_set_color(c_white);
}