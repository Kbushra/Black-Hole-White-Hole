image_index = clamp(image_index, 0, image_number-1);
depth = -9999;

if image_index == image_number-1 && audio_is_playing(sndParadox) { audio_stop_sound(sndParadox); }