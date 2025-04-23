/// @description Se detiene o rebota
if _colision == true {
	var _base_y = other.y + other.sprite_height;
	
	//Si choca desde abajo, se frena en seco
	if y > _base_y - _rapidez_salto && x > other.x && x < other.x + other.sprite_width {
		y = _base_y + 51;
		_movim_y = 0; 
	}
	else if y > other.y && 
		((x > other.x && _movim_x < 0) || (x <= other.x && _movim_x > 0)) {
		_movim_x *= -0.75; //Si choca por el lado, rebota
	}
}