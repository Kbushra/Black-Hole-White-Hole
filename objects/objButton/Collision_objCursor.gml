if !visible { exit; }

image_index = mouse_check_button(mb_left);

if mouse_check_button_pressed(mb_left) && global.materials - reqMats >= 0
{
	switch effect
	{	
		case 0:
			global.energyDiminish -= 20;
			global.energyWalkMult *= 1.45;
			break;
		
		case 1:
			global.spd *= 1.25;
			global.energyWalkMult *= 1.25;
			break;
			
		case 2:
			global.pull = 2;
			global.energyDiminish += 30;
			objShop.offer[2] = "";
			visible = false;
			break;
		
		case 3:
			game_restart();
			break;
	}
	
	global.materials -= reqMats;
	audio_play_sound(sndPurchase, 10, false);
}