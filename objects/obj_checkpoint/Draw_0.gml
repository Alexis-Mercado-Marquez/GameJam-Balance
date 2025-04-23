/// @description Dibujado condicional
if global._checkpoint == id {
	draw_sprite(spr_bandera_2, 0, x, y);
}
else {
	draw_sprite(spr_bandera_1, 0, x, y);
}