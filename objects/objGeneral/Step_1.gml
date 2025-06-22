if keyboard_check_pressed(vk_f4) { window_set_fullscreen(!window_get_fullscreen()); }

if global.pause { exit; }

if keyboard_check_pressed(vk_space)
{ instance_create_layer(x, y, "Instances", objTransition); global.energy -= 30; }

if keyboard_check_pressed(ord("E")) && !instance_exists(objMarker)
{
	instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objMarker);
	instance_create_layer(x, y, "Instances", objPointer);
}

if keyboard_check_pressed(ord("Q")) { global.markerVisible = !global.markerVisible; }

if keyboard_check_pressed(ord("I")) && !instance_exists(objShop)
{ instance_create_layer(x, y, "Instances", objShop); }

global.r = keyboard_check(vk_right) || keyboard_check(ord("D")); 
global.l = keyboard_check(vk_left) || keyboard_check(ord("A")); 
global.u = keyboard_check(vk_up) || keyboard_check(ord("W")); 
global.d = keyboard_check(vk_down) || keyboard_check(ord("S"));

global.energy -= global.energyDiminish/60;