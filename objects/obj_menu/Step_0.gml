/// @description Cambia el color cada 10 tics
_tics += 1;

if _tics > 9 {
	_tics = 0;
	_color += 1;
	
	if _color > 2 {
		_color = 0;
	}
	
	draw_set_color(_lista_colores[_color]);
}