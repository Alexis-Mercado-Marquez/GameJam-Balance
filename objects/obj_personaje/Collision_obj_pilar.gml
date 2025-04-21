/// @description Se detiene o rebota
if _colision == true {
	var _base_y = other.y + other.sprite_height;
	
	//Si choca desde abajo, se frena en seco
	if y > _base_y - _rapidez_salto && x > other.x && x < other.x + other.sprite_width {
		y = _base_y + 51;
		_movim_y = 0; 
	}
	else if y > other.y {
		_movim_x *= -1; //Si choca por el lado, rebota
	}
}