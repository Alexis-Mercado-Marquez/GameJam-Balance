/// @description Controla al personaje
if keyboard_check(vk_backspace) {
	room_restart();
}

//Movimiento en x
var _direccion = keyboard_check(vk_right) - keyboard_check(vk_left);

if _direccion != 0 {
	if abs(_movim_x) < _rapidez_max {
		_movim_x += _direccion * _aceleracion;
		
		if _tics_max_rapidez > 0 {
			_tics_max_rapidez -= 1;
		}
	}
	else {
		_tics_max_rapidez += 1;
	}
}
else if _movim_x > 0 {
	_movim_x -= _aceleracion;
}
else if _movim_x < 0 { 
	_movim_x += _aceleracion;
}

//Si pasa mucho tiempo a máxima velocidad, desactiva la colisión
if _tics_max_rapidez >= _limite_max_rapidez {
	_colision = false;
	_tics_max_rapidez = 0;
}

//Movimiento en y
if _colision == true && place_meeting(x, y+2, obj_cuerda) {
	_movim_y = 0;
	
	if keyboard_check(vk_space) {
		_movim_y = -_rapidez_salto;
	}
}
else {
	_tics_max_rapidez -= 0.5;
	
	//Empieza a caer
	if _movim_y < 10 {
		_movim_y += 1;
	}
}

//Mueve e inclina al personaje
if _colision == true {
	move_and_collide(_movim_x, _movim_y, obj_cuerda);
}
else {
	x += _movim_x;
	y += _movim_y;
}