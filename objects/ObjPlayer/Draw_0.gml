// Evento Draw
draw_self(); // Dibuja el sprite del personaje

// Dibuja los corazones
var heart_width = sprite_get_width(Hearth); 
for (var i = 0; i < vida / 10; i++) {
    draw_sprite(Hearth, 0, 10 + i * heart_width, 10);
}

var shield_width = sprite_get_width(spr_shield);
for (var i = 0; i < escudo / 10; i++) {
    draw_sprite(spr_shield, 0, 20 + i * shield_width, 30);
}






