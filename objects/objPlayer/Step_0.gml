hMovement = lerp(hMovement, (global.r - global.l)*spd, 0.1);
vMovement = lerp(vMovement, (global.d - global.u)*spd, 0.1);

x += hMovement;
y += vMovement;
x = clamp(x, 48, room_width - 48);
y = clamp(y, 48, room_height - 48);

global.energy -= (global.r || global.l) + (global.u || global.d);