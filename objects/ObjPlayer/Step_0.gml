
// Evento Step
var move_speed = 4; // Velocidad de movimiento del personaje

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
if (!keyboard_check(ord("A") && !keyboard_check(ord("D")) && !keyboard_check(ord("W")) 
&& !keyboard_check(ord("S")))) {
    if (last_direction == "R") {
        sprite_index = IdleRCh;
    } else if (last_direction == "L") {
        sprite_index = IdleLCh;
    }
}








