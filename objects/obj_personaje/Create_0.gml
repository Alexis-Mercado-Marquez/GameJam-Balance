/// @description Declaración de variables
_rapidez_max = 10; //Velocidad máxima que puede alcanzar
_aceleracion = 0.3; //Cuanto aumenta su velocidad cada "tic"
_rapidez_salto = 16; //Cuanta velocidad gana al saltar
_colision = true; //Indica si puede chocar con la cuerda
_tics_max_rapidez = 0; //Cuantos frames lleva a máxima velocidad
_limite_max_rapidez = 10; //Cuantos frames puede ir a máxima velocidad antes de caer
_sprite = spr_personaje; //Sprite con el que se dibuja al personaje

_angulo = 0; //Inclinación del personaje
_vel_inclinacion = 0.5; //A que velocidad se inclina naturalmente (sin que pulse botones)
_angulo_max = 60; //Inclinación máxima del personaje ante de caer

//Cuanto se moverá en cada frame
_movim_x = 0;
_movim_y = 0;