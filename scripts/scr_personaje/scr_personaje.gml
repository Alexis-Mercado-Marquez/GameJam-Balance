// Scripts del personaje que controlas

/// @description Cae al chocar
function scr_per_chocar(_otro){
	if _colision == true {
		_colision = false;
		_sprite = spr_payasi_cae;	
		image_speed = 0;

		if x < _otro.x + 32 {
			_movim_x = -6;
		}
		else {
			_movim_x = 6;
		}

		//Reproduce el sonido de golpe y el de caida a la vez
		audio_play_sound(snd_golpear, 1, false);
		audio_play_sound(snd_caida, 2, false);
		
		alarm[0] = game_get_speed(gamespeed_fps); //60 frames
	}
}