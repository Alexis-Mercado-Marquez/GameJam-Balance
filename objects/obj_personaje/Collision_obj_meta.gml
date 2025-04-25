/// @description Gana el nivel
_sprite = spr_payasi_gana;
_gano = true;
_angulo = 0;
image_speed = 0;

//Crea partículas
part_particles_create(global.sis_particulas, other.x, other.y, global.part_estrella, 10);

//Avanza al siguiente nivel en 2 segundos
alarm[1] = game_get_speed(gamespeed_fps) * 2;
instance_destroy(other);