// Guarda funciones comunes del juego
/// @description Regresa al personaje al último checkpoint
function scr_con_spawn_en_checkpoint()
{
	//Primero reinicia el sonido
	audio_stop_all();
	audio_play_sound(msc_circus, 2, true);
	
	if variable_global_exists("_checkpoint") && global._checkpoint != noone {
		obj_personaje.x = global._checkpoint.x;
		obj_personaje.y = global._checkpoint.y;
	
		obj_camara.x = global._checkpoint.x - 64;
		obj_camara.y = global._checkpoint.y - 64;
	}
	
	//Ajusta el fondo para que se repita
	var _id_capa = layer_get_id("Background");
	var _fondo = layer_background_get_id(_id_capa);
	layer_background_htiled(_fondo, true);
}