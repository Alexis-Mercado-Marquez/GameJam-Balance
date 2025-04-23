/// @description Declaración de variables

//Área que abarcará la camara
_ancho_camara = 720;
_altura_camara = 480;

//Hacia donde se moverá
_seguir_a = obj_personaje;
_hacia_x = x;
_hacia_y = y;

_pausado = false; //Indica si el juego esta parado
_superf_pausa = -1; //Guarda una captura de la pantalla de juego
_buffer_pausa = -1; //Guarda la captura en buffer

//Propiedades de la fuente
draw_set_font(fnt_debug);
draw_set_color(c_white);