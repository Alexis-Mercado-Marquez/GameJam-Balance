/// @description Muestra la interfaz
var _camara_x = view_get_xport(0);
var _camara_y = view_get_yport(0);

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text(_camara_x + 360, _camara_y + 16, "Left: A/<   Right: D/>   Jump: space   Pause: enter");