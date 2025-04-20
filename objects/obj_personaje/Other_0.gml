/// @description Desactiva el objeto
instance_deactivate_object(obj_personaje);

if !alarm[0] {
	alarm[0] = game_get_speed(gamespeed_fps); //60 frames
}