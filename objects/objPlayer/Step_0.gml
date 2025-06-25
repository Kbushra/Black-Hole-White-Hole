if global.pause { exit; }
visible = true;

var colourMult = global.swap ? 1.5 : 1;
var radioMult = place_meeting(x, y, objRadioactive) ? 0.6 : 1;
hMovement = lerp(hMovement, (global.r - global.l)*global.spd*colourMult*radioMult, 0.1);
vMovement = lerp(vMovement, (global.d - global.u)*global.spd*colourMult*radioMult, 0.1);

x += hMovement;
y += vMovement;
x = clamp(x, 48, room_width - 48);
y = clamp(y, 48, room_height - 48);

var energyWalk = (global.r || global.l)/2 + (global.u || global.d)/2;
global.energy -= energyWalk * global.walkEnergy/60;