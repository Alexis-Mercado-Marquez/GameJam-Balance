/// @description Desactiva la colision
if _colision == true {
	_colision = false;
	_sprite = spr_caido;

	if x < other.x + 32 {
		_movim_x = -8;
	}
	else {
		_movim_x = 8;
	}

	alarm[0] = game_get_speed(gamespeed_fps); //60 frames
}