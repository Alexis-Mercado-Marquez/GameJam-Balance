/// @description Gana el nivel
_sprite = spr_ganador;
_gano = true;
_angulo = 0;

//Avanza al siguiente nivel en 2 segundos
alarm[1] = game_get_speed(gamespeed_fps) * 2;
instance_destroy(other);