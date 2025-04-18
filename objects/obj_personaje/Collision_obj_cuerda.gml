/// @description Si choca desde arriba
if _colision == true && _movim_y > 0 && y < other.y {
	//Se detiene en seco
	y = other.y - 12;
	_movim_y = 0;
	
	//Salta con espacio
	if keyboard_check(vk_space) {
		_movim_y = -_rapidez_salto;
	}
}