/// @description Crea una bomba
instance_create_depth(x, y + sprite_height - 32, 0, obj_bomba);
alarm[0] = game_get_speed(gamespeed_fps);