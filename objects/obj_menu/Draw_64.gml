/// @description Dibuja los textos
if (room == rm_inicio) {
	draw_set_font(fnt_titulo);
	draw_text(room_width / 2, room_height / 2 - 64, "PAYASI'S CIRCUS");
	draw_set_font(fnt_subtitulo);
	draw_text(room_width / 2, room_height / 2, "Press Space");
}
else {
	draw_set_font(fnt_titulo);
	draw_text(room_width / 2, room_height / 2 - 64, "THANKS FOR PLAYING");
}