// Evento Step

// Cambia la dirección aleatoriamente
if (random(100) < 5) { // 5% de probabilidad cada frame
    direction = random(360);
}

// Cambia los sprites dependiendo de la dirección y la velocidad
if (speed != 0) {
    if (direction >= 0 && direction < 180) {
        sprite_index = sprite_move_right;
    } else {
        sprite_index = sprite_move_left;
    }
} else {
    if (direction >= 0 && direction < 180) {
        sprite_index = sprite_idle_right;
    } else {
        sprite_index = sprite_idle_left;
    }
}





