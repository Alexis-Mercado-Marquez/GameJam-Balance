/// @description Se mueve en 'x' y 'y'
x += (_rapidez_x * _direccion);
y += _rapidez_y;

//Movimiento en y (caida)
if _rapidez_y < 10 {
	_rapidez_y += 0.75;
}