/// @description Rebota o lo sostiene
if _colision == true {
	//Lo sostiene si choca desde arriba
	if _movim_y > 0 && y < other.y {
		y = other.y - 12;
		_movim_y = 0;
	
		//Salta con espacio
		if keyboard_check(vk_space) {
			_movim_y = -_rapidez_salto;
		}
	}
	else if y < other.y + other.sprite_height {
		_movim_x *= -1; //Invierte su movimiento
	}
}