/// @description Agrega enganches
draw_self();

if place_meeting(x, y, obj_pilar) == false {
	if place_meeting(x + 68, y, obj_cuerda) == false {
		draw_sprite(spr_enganche, 0, x + 64, y - 2);
	}
	if place_meeting(x - 4, y, obj_cuerda) == false {
		draw_sprite(spr_enganche, 0, x - 4, y - 2);
	}
}