/// @description Controla al personaje
if _gano == true {
	exit; //Se salta el evento
}

//Movimiento en x
var _direccion = keyboard_check(vk_right) - keyboard_check(vk_left);

if _direccion != 0 {
	//Si aún no supera la velocidad máxima, la incrementa
	if abs(_movim_x) < _rapidez_max {
		_movim_x += _direccion * _aceleracion;
	}
	else {
		//Cada tic más cerca de caer
		_movim_x = _rapidez_max * sign(_movim_x);
	}
	
	//Se inclina mucho mas rápido cuando trata de enderesarse
	if (_angulo > 0 && _direccion > 0) || (_angulo < 0 && _direccion < 0) {		
		_angulo -= _direccion * _aceleracion * 8;
	}
	else { 
		_angulo -= _direccion * _aceleracion * 3;
	}
}
else {
	if _angulo >= 0 {
		//_movim_x += _vel_inclinacion;
		_angulo += _vel_inclinacion;
	}
	else {
		//_movim_x -= _vel_inclinacion;
		_angulo -= _vel_inclinacion;
	}
	
	if _movim_x > 0 {
		_movim_x -= (_aceleracion * 0.75); //Acerca su movimiento a cero
	}
	else if _movim_x < 0 { 
		_movim_x += (_aceleracion * 0.75); //Acerca su movimiento a cero
	}
}

//Si supera cierto ángulo, desactiva la colisión
if abs(_angulo) >= _angulo_max {
	_colision = false;
	_sprite = spr_caido;
}

//Movimiento en y (caida)
if _movim_y < 10 {
	_movim_y += 1;
}

//Colisiones con objetos
if place_meeting(x, y, obj_enemigo) {
	var _enemigo = instance_nearest(x, y, obj_enemigo);
	event_perform(ev_collision, _enemigo.object_index)
}

x += _movim_x;
y += _movim_y;