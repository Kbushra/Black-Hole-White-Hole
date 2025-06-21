draw_set_font(fntMain);

gpu_set_blendenable(false);
if global.swap { shader_set(shSwap); }

draw_surface_stretched(application_surface, 0, 0, window_get_width(), window_get_height());

shader_reset();
gpu_set_blendenable(true);