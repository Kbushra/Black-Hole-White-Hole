depth = objPlayer.depth + 1;
if keyboard_check_pressed(ord("E"))
{
	x = objPlayer.x;
	y = objPlayer.y;
	global.energy -= 100;
	audio_play_sound(sndClick, 10, false);
}