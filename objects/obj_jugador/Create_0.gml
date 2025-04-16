/// @description Definición de variables
_angulo = point_direction(x, y, obj_enganche.x, obj_enganche.y);
_distancia = point_distance(x, y, obj_enganche.x, obj_enganche.y);
_velocidad = 1;
_limite = 1.5;
_direccion = 1;

_dist_x = obj_enganche.x - x;
_dist_y = obj_enganche.y - y;
_dir_x = _dist_x >= 0 ? 1 : -1;
_dir_y = _dist_y >= 0 ? 1 : -1;