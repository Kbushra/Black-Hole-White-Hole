xscale = lerp(xscale, global.energy/global.maxEnergy, 0.1);

draw_text(181.5, 2, "Energy until linkage breaks");
draw_sprite(sprEnergyBar, 1, 181.5, 32);
draw_sprite_ext(sprEnergyBar, 0, 181.5, 32, xscale, 1, 0, c_white, 1);