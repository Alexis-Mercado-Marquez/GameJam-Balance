/// @description Se balancea a partir del enganche
_angulo += (4 * _direccion);

x = obj_enganche.x + (lengthdir_x(_distancia, _angulo) * _velocidad * _dir_x);
y = obj_enganche.y + (lengthdir_y(_distancia, _angulo) * _velocidad * _dir_y);

_dist_x = obj_enganche.x - x;
_dist_y = obj_enganche.y - y;
_dir_x = _dist_x >= 0 ? 1 : -1;
_dir_y = _dist_y >= 0 ? 1 : -1;

if _angulo >= 181 && _angulo <= 188 && _direccion == -1 {
	_direccion = 1;
}
if _angulo >= 360 && _angulo <= 368 && _direccion == 1 {
	_direccion = -1;
}

/*if _velocidad < _limite {
	_velocidad += 0.05;
	_limite = 1.5;
}
else {
	_velocidad -= 0.05;
	_limite = -1.5;
}*/