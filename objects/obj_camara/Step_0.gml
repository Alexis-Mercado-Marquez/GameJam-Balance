/// @description La cámara sigue al jugador
if _pausado == true {
	exit;
}

if _seguir_a != noone 
	&& _seguir_a.x > 64 
	&& _seguir_a.x < room_width - 64
	&& _seguir_a.y > 64
	&& _seguir_a.y < room_height - 64 
{
	_hacia_x = _seguir_a.x;
	_hacia_y = _seguir_a.y;
}

//Se acerca al jugador, más rápido entre más lejos este
x += (_hacia_x - x) / 25;
y += (_hacia_y - y) / 25;

camera_set_view_pos(view_camera[0], x - (_ancho_camara * 0.5), y - (_altura_camara * 0.5));