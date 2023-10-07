// Evento Global Mouse Right Pressed
var roll_distance = 200; // Distancia que el personaje se moverá durante la voltereta
var direction_to_mouse = point_direction(x, y, mouse_x, mouse_y); // Dirección hacia el mouse

// Cambiar el sprite dependiendo de la dirección
if (direction_to_mouse >= 90 && direction_to_mouse < 270) {
    sprite_index = RollLCh;
    image_speed = 0.5; // Ajusta la velocidad de la animación a la mitad de velocidad
} else {
    sprite_index = RollRCh;
    image_speed = 0.5; // Ajusta la velocidad de la animación a la mitad de velocidad
}

// Mover al personaje en la dirección del mouse
x += lengthdir_x(roll_distance, direction_to_mouse);
y += lengthdir_y(roll_distance, direction_to_mouse);








