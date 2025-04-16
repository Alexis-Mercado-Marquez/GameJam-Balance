/// @description Lo dibuja de forma continua
var _origen_x = obj_jugador.x;
var _origen_y = obj_jugador.y;

var _destino_x = obj_enganche.x;
var _destino_y = obj_enganche.y;

x = _origen_x;
y = _origen_y;

var _angulo = point_direction(_origen_x, _origen_y, _destino_x, _destino_y);
var _ancho = sprite_width;

//Cada vez que la distancia sea mayor que "i" veces el sprite, se dibuja de nuevo
for (var i = 0; distance_to_point(_destino_x, _destino_y) > (i * _ancho); i++) {
	draw_sprite_ext(sprite_index, image_index, 
	x + lengthdir_x(i * _ancho, _angulo),
	y + lengthdir_y(i * _ancho, _angulo),
	1, 1, _angulo, image_blend, image_alpha);
}