if keyboard_check_pressed(vk_tab) && !global.pause { on = !on; }
visible = !global.pause && on;
depth = -9999;