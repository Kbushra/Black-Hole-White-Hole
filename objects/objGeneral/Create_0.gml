randomise();

if os_browser != browser_not_a_browser { window_set_size(1366, 768); }

for (var i = 0; i < 500; i++)
{ instance_create_layer(random(room_width), random(room_height), "Stars", objStar); }

global.maxEnergy = 5000;
global.energy = global.maxEnergy;

global.swap = false;

global.pause = false;

ini_open("BW Hole");

global.endingGot[0] = ini_read_real("Endings", "Ending 1", false);
global.endingGot[1] = ini_read_real("Endings", "Ending 2", false);
global.endingGot[2] = ini_read_real("Endings", "Ending 3", false);
global.endingGot[3] = ini_read_real("Endings", "Ending 4", false);
global.endingGot[4] = ini_read_real("Endings", "Ending 5", false);

ini_close();

global.endingName[0] = global.endingGot[0] ? "Repaired" : "???";
global.endingName[1] = global.endingGot[1] ? "Lost Bond" : "???";
global.endingName[2] = global.endingGot[2] ? "Paradox" : "???";
global.endingName[3] = global.endingGot[3] ? "Collision" : "???";
global.endingName[4] = global.endingGot[4] ? "Sacrifice" : "???";

global.markerVisible = true;

global.gameEnd = false;

global.materials = 0;
global.deleters = 0;
global.pull = 1;
global.energyDiminish = -2;
global.energyWalkMult = 1;
global.spd = 5;

application_surface_draw_enable(false);

instance_create_layer(x, y, "Instances", objIntro);