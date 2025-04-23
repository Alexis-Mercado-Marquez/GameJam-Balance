/// @description Maneja el pausado
if (_pausado) {
	if surface_exists(_superf_pausa) {
		var _encuadre_x = x - (_ancho_camara / 2);
		var _encuadre_y = y - (_altura_camara / 2);
		
		//Dibuja la captura de pantalla en la superficie por defecto (application_surfac)
		draw_surface(_superf_pausa, _encuadre_x, _encuadre_y);
		
		//Dibuja un filtro para oscurecer la imagen
		/*draw_set_alpha(0.25);
		draw_rectangle_colour(_encuadre_x, _encuadre_y, _encuadre_x + _ancho_camara,_encuadre_y + _altura_camara, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);*/
		
		//Texto de pausa
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		draw_text(x, y, "Pausa");
	}
	else {
		//Restaura el buffer si se perdio la superficie (como al encojer la ventana)
		_superf_pausa = surface_create(_ancho_camara, _altura_camara);
		buffer_set_surface(_buffer_pausa, _superf_pausa, 0);
	}
}

if keyboard_check_pressed(vk_enter)
{
	_pausado = !_pausado;
	if _pausado == true {
		//Desactiva todo excepto este objeto
		instance_deactivate_all(true);
		audio_pause_all();
		
		//Define una nueva superficie sobre la cuál dibujar
		_superf_pausa = surface_create(_ancho_camara, _altura_camara);
		surface_set_target(_superf_pausa);
		
		//Dibuja el juego (application_surface) sobre la superficie actual (_superf_pausa)
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
		
		//Guarda una copia de la superficie por si la pantalla pierde foco
		if buffer_exists(_buffer_pausa) buffer_delete(_buffer_pausa);
		_buffer_pausa = buffer_create(_ancho_camara * _altura_camara * 4, buffer_fixed, 1);
		buffer_get_surface(_buffer_pausa, _superf_pausa, 0);
	}
	else //Reanuda el juego
    {
		instance_activate_all();
		audio_resume_all();
		
		//Libera la memoria que usan estas variables (no basta con reasignarlas)
		if surface_exists(_superf_pausa) surface_free(_superf_pausa);
		if buffer_exists(_buffer_pausa) buffer_delete(_buffer_pausa);
    }
}
