// Evento Collision con ObjB1
if (!invincible) {
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

// Destruir la bala
instance_destroy(other);








