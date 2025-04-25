/// @description Cambia de dirección
_direccion *= -1;

//Cambia también el punto de dibujado
if _direccion == -1 {
	_origen_x = sprite_get_width(spr_tigre);
}
else {
	_origen_x = 0;
}