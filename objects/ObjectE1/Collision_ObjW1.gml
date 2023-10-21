// Evento Collision con ObjW1
vida -= 10; // El enemigo recibe 10 puntos de daño

// Cambiar al sprite de daño dependiendo de la última dirección
if (last_direction == "R") {
    sprite_index = EHIT1R; // Reemplazar EHIT1R con el nombre de tu sprite de daño hacia la derecha
} else if (last_direction == "L") {
    sprite_index = EHIT1L; // Reemplazar EHIT1L con el nombre de tu sprite de daño hacia la izquierda
}

// Verificar si el enemigo ha perdido toda su vida
if (vida <= 0) {
    // Cambiar al sprite de muerte dependiendo de la última dirección
    if (last_direction == "R") {
        sprite_index = DE1R; // Reemplazar DE1R con el nombre de tu sprite de muerte hacia la derecha
    } else if (last_direction == "L") {
        sprite_index = DE1L; // Reemplazar DE1L con el nombre de tu sprite de muerte hacia la izquierda
    }
}






