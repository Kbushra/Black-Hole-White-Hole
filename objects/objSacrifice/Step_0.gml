if sprite_index == sprSacrifice && image_index >= image_number - 1 { sprite_index = sprRSEnd; }
depth = -9999;

if image_index >= 4 && !played[0] { audio_play_sound(sndPop, 10, false); played[0] = true; }
if image_index >= 10 && !played[1] { audio_play_sound(sndBlast, 10, false); played[1] = true; }