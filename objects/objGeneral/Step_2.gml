var clampX = clamp(objPlayer.x - 341.5, 0, room_width - 683);
var clampY = clamp(objPlayer.y - 192, 0, room_height - 384);
var lerpX = lerp(camera_get_view_x(view_camera[0]), clampX, 0.2);
var lerpY = lerp(camera_get_view_y(view_camera[0]), clampY, 0.2);

camera_set_view_pos(view_camera[0], lerpX, lerpY);

if global.energy <= 0 { instance_create_layer(x, y, "Instances", objLinkBreak); }
global.energy = clamp(global.energy, 0, global.maxEnergy);

if global.energy <= 1000 && !global.tutorial[2] { instance_create_layer(x, y, "Instances", objEnergyTutorial); }

ini_open("BW Hole");

ini_write_real("Tutorials", "Tutorial 1", global.tutorial[0]);
ini_write_real("Tutorials", "Tutorial 2", global.tutorial[1]);
ini_write_real("Tutorials", "Tutorial 3", global.tutorial[2]);
ini_write_real("Tutorials", "Tutorial 4", global.tutorial[3]);
ini_write_real("Tutorials", "Tutorial 5", global.tutorial[4]);

ini_write_real("Endings", "Ending 1", global.endingGot[0]);
ini_write_real("Endings", "Ending 2", global.endingGot[1]);
ini_write_real("Endings", "Ending 3", global.endingGot[2]);
ini_write_real("Endings", "Ending 4", global.endingGot[3]);
ini_write_real("Endings", "Ending 5", global.endingGot[4]);

ini_close();