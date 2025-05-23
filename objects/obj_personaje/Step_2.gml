/// @description Controla al personaje
if _gano == true {
	exit; //Se salta el evento
}

//Movimiento en x
var _dir_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _dir_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
_direccion = _dir_right - _dir_left;

if _direccion != 0 {
	//Si aún no supera la velocidad máxima, la incrementa
	var _movim_final = _movim_x + (_direccion * _aceleracion);
	
	if abs(_movim_final) < _rapidez_max {
		_movim_x = _movim_final;
	}
	else {
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
	//De forma pasiva, se inclina con el tiempo
	if _angulo >= 0 {
		_angulo += _vel_inclinacion;
	}
	else {
		_angulo -= _vel_inclinacion;
	}
	
	//Desacelera (acerca su movimiento a cero)
	if _movim_x > 0 {
		_movim_x -= _aceleracion;
	}
	else if _movim_x < 0 { 
		_movim_x += _aceleracion;
	}
}

//Si supera cierto ángulo, desactiva la colisión
if _colision == true {
	if abs(_angulo) >= _angulo_max || y >= 896 {
		_colision = false;
		_sprite = spr_payasi_cae;
		audio_play_sound(snd_caida, 2, false);
	}
}

//Movimiento en y (caida)
if _movim_y < 10 {
	_movim_y += 1;
}

//Colisiones con objetos
if place_meeting(x, y, obj_tigre) {
	var _enemigo = instance_nearest(x, y, obj_tigre);
	event_perform(ev_collision, _enemigo.object_index)
}
if place_meeting(x, y, obj_aro) {
	var _aro = instance_nearest(x, y, obj_aro);
	event_perform(ev_collision, _aro.object_index)
}
if place_meeting(x, y, obj_bola) {
	var _bomba = instance_nearest(x, y, obj_bola);
	event_perform(ev_collision, _bomba.object_index)
}
if place_meeting(x, y, obj_mono) {
	var _botador = instance_nearest(x, y, obj_mono);
	event_perform(ev_collision, _botador.object_index)
}

image_speed = _movim_x / 2;

x += _movim_x;
y += _movim_y;