/// @description Si choca desde arriba
if y >= other.y - 64 && y <= other.y - 56 {
	y = other.y - 64;
	_rapidez_y = -_rapidez_salto;
	
	//Cambia de dirección si ya no hay cuerda
	if _direccion == 1 && place_empty(x + 128 + _rapidez_x, y + 64, obj_cuerda) {
		_direccion = -1;
	}
	else if _direccion == -1 && place_empty(x -128 - _rapidez_x, y + 64, obj_cuerda) {
		_direccion = 1;
	}
}