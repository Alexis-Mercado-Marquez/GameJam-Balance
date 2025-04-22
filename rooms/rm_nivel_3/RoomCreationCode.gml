if variable_global_exists("_checkpoint") && global._checkpoint == true {
	obj_personaje.x = global._inicio_x;
	obj_personaje.y = global._inicio_y;
	
	obj_camara.x = global._inicio_x - 64;
	obj_camara.y = global._inicio_y - 64;
}