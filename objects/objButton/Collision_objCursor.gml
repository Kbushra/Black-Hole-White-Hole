if !visible { exit; }

image_index = mouse_check_button(mb_left);

if mouse_check_button_pressed(mb_left) && global.materials - reqMats >= 0
{
	switch effect
	{	
		case 0:
			global.energyDiminish -= 20;
			global.walkEnergy += 40;
			break;
		
		case 1:
			global.spd *= 1.25;
			global.walkEnergy += 20;
			break;
			
		case 2:
			global.walkEnergy -= 140;
			global.diminAddOn = 1000;
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