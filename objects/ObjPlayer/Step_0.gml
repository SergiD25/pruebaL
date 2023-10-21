// Evento Step
var move_speed = 4; // Velocidad de movimiento del personaje
var roll_distance = 200; // Distancia que el personaje se moverá durante la voltereta

if (!muerto) {
    // Movimiento horizontal
    if (keyboard_check(ord("D"))) {
        x += move_speed;
        sprite_index = RunRCh;
        last_direction = "R";
    } else if (keyboard_check(ord("A"))) {
        x -= move_speed;
        sprite_index = RunLCh;
        last_direction = "L";
    }

    // Movimiento vertical
    if (keyboard_check(ord("W"))) {
        y -= move_speed;
    } else if (keyboard_check(ord("S"))) {
        y += move_speed;
    }

    // Si no se están presionando teclas de movimiento, establecer el sprite de inactividad correspondiente
    if (!keyboard_check(ord("A")) && !keyboard_check(ord("D")) && !keyboard_check(ord("W")) 
    && !keyboard_check(ord("S"))) {
        if (last_direction == "R") {
            sprite_index = IdleRCh;
        } else if (last_direction == "L") {
            sprite_index = IdleLCh;
        }
    }

    var enemy = instance_place(x, y, obj_enemy_parent); // Verifica la colisión con cualquier enemigo
    if (enemy != noone && !invincible) {
        var damage = 10; // El personaje recibe 10 puntos de daño

        // Primero se reduce el escudo
        if (escudo > 0) {
            var shield_damage = min(damage, escudo);
            escudo -= shield_damage;
            damage -= shield_damage;
        }

        // Si el escudo está agotado, entonces se reduce la vida
        if (damage > 0) {
            vida -= damage;
        }

        invincible = true;
        alarm[0] = 30; // Configura una alarma para terminar la invulnerabilidad después de 1 segundo (30 pasos)
    }

    // Verificar si el personaje ha perdido toda su vida
if (vida <= 0 && !muerto) {
    // Cambiar el sprite dependiendo de la última dirección
    if (last_direction == "R") {
        sprite_index = DieR; // Reemplaza DieR con el nombre de tu sprite de muerte hacia la derecha
    } else if (last_direction == "L") {
        sprite_index = DieL; // Reemplaza DieL con el nombre de tu sprite de muerte hacia la izquierda
    }

    image_speed = 1 / sprite_get_number(sprite_index); // Ajusta la velocidad de la imagen para que el sprite se muestre una vez
    image_index = 0; // Comienza en el primer fotograma del sprite
    muerto = true;
}

// Detener la animación en el último fotograma
if (muerto && floor(image_index) == sprite_get_number(sprite_index) - 1) {
    image_speed = 0;
     }
}

// Añadido: Recoger arma con tecla E y lanzarla con clic izquierdo del mouse.
if (!muerto && keyboard_check_pressed(ord("E")) && instance_exists(objW1)) {
    with (objW1) {
        instance_destroy();
    }
    tieneArma = true;
}

if (!muerto && tieneArma && mouse_check_button_pressed(mb_left)) {
    var arma = instance_create_layer(x, y, "Instances", objW1);
    arma.speed = 10; 
    arma.direction = point_direction(x, y, mouse_x, mouse_y);
    tieneArma = false;
}









