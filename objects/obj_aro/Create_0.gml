/// @description Crea otro aro
if depth == 100 {
	instance_create_depth(x, y, -1, obj_aro);
	depth = 1;
}
else {
	sprite_index = spr_aro_1;
}