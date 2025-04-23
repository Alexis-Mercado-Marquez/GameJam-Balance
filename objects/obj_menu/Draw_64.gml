/// @description Dibuja los textos
if (room == rm_inicio) {
	draw_set_font(fnt_titulo);
	draw_text(room_width / 2, room_height / 2, "GAME JAM BALANCE");
	draw_set_font(fnt_subtitulo);
	draw_text(room_width / 2, (room_height / 2) + 64, "Press Space");
}
else {
	draw_set_font(fnt_titulo);
	draw_text(room_width / 2, room_height / 2, "THANKS FOR PLAYING");
}