// Guarda funciones comunes del juego
/// @description Regresa al personaje al último checkpoint
function scr_con_spawn_en_checkpoint()
{
	if variable_global_exists("_checkpoint") && global._checkpoint != noone {
		obj_personaje.x = global._checkpoint.x;
		obj_personaje.y = global._checkpoint.y;
	
		obj_camara.x = global._checkpoint.x - 64;
		obj_camara.y = global._checkpoint.y - 64;
	}
}