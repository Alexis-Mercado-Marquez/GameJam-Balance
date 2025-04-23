// Scripts del personaje que controlas

/// @description Cae al chocar
function scr_per_chocar(_otro){
	if _colision == true {
		_colision = false;
		_sprite = spr_caido;

		if x < _otro.x + 32 {
			_movim_x = -6;
		}
		else {
			_movim_x = 6;
		}

		alarm[0] = game_get_speed(gamespeed_fps); //60 frames
	}
}