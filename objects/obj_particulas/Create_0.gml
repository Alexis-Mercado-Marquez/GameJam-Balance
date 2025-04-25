/// @description Crea el sistema
global.sis_particulas = part_system_create_layer("Effects", true);
global.part_estrella = part_type_create();

part_type_shape(global.part_estrella, pt_shape_star);
part_type_size(global.part_estrella, 0.05, 0.05, 0, 0.5);
part_type_scale(global.part_estrella, 1, 1);
part_type_colour2(global.part_estrella, c_yellow, c_white);
part_type_speed(global.part_estrella, 2, 4, -0.1, 0.1);
part_type_direction(global.part_estrella, 0, 360, 0, 0.1);
part_type_orientation(global.part_estrella, 0, 0, 0, 0, 0);
part_type_life(global.part_estrella, 40, 40);