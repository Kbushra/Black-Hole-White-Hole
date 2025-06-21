xscale = lerp(xscale, global.energy/global.maxEnergy, 0.1);
camx = camera_get_view_x(view_camera[0]);
camy = camera_get_view_y(view_camera[0]);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(camx + 181.5, camy + 2, "Energy until linkage breaks");
draw_sprite(sprEnergyBar, 1, camx + 181.5, camy + 32);
draw_sprite_ext(sprEnergyBar, 0, camx + 181.5, camy + 32, xscale, 1, 0, c_white, 1);