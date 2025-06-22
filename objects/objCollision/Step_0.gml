depth = -9999;
image_index = clamp(image_index, 0, image_number-1);

if image_index >= 4 && !played { audio_play_sound(sndPop, 10, false); played = true; }