/// @description Controla al personaje
if keyboard_check(vk_backspace) {
	room_restart();
}

//Movimiento en x
var _direccion = keyboard_check(vk_right) - keyboard_check(vk_left);

if _direccion != 0 {
	//Si aún no supera la velocidad máxima, la incrementa
	if abs(_movim_x) < _rapidez_max {
		_movim_x += _direccion * _aceleracion;
		
		//Recupera tiempo para usar velocidad máxima
		if _tics_max_rapidez > 0 {
			_tics_max_rapidez -= 1;
		}
	}
	else {
		//Cada tic más cerca de caer
		_tics_max_rapidez += 1;
	}
}
else if _movim_x > 0 {
	_movim_x -= _aceleracion; //Acerca su movimiento a cero
}
else if _movim_x < 0 { 
	_movim_x += _aceleracion; //Acerca su movimiento a cero
}

//Si pasa mucho tiempo a máxima velocidad, desactiva la colisión
if _tics_max_rapidez >= _limite_max_rapidez {
	_colision = false;
	_tics_max_rapidez = 0;
}

//Movimiento en y (caida)
if _movim_y < 10 {
	_movim_y += 1;
}

x += _movim_x;
y += _movim_y;