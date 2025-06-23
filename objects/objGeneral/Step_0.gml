if global.mus != -1 { var pos = audio_sound_get_track_position(global.mus); }
else { var pos = -1; }

if audio_is_playing(musBlack) && global.swap
{
	audio_stop_sound(global.mus);
	global.mus = audio_play_sound(musWhite, 10, false);
	audio_sound_set_track_position(global.mus, pos);
}

if audio_is_playing(musWhite) && !global.swap
{
	audio_stop_sound(global.mus);
	global.mus = audio_play_sound(musBlack, 10, false);
	audio_sound_set_track_position(global.mus, pos);
}

if pos >= 38.4 { audio_sound_set_track_position(global.mus, 19.2); }
if global.mus != -1 && global.gameEnd { audio_stop_sound(global.mus); global.mus = -1; }