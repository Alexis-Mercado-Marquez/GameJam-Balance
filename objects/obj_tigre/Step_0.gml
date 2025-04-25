/// @description Cambia de dirección si ya no hay cuerda
x += (_rapidez_x * _direccion);

if _direccion == 1 && place_empty(x + 32 + _rapidez_x, y + 2, obj_cuerda) {
	_direccion = -1;
}
else if _direccion == -1 && place_empty(x - 32 - _rapidez_x, y + 2, obj_cuerda) {
	_direccion = 1;
}
