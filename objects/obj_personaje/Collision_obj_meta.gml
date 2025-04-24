/// @description Gana el nivel
_sprite = spr_payasi_gana;
_gano = true;
_angulo = 0;
image_speed = 0;

//Avanza al siguiente nivel en 2 segundos
alarm[1] = game_get_speed(gamespeed_fps) * 2;
instance_destroy(other);