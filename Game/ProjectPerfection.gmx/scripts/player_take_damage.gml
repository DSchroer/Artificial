///player_take_damage()

if(remaining_shield > 0)
{
    // Hit shield.
    if(remaining_shield > damage)
    {
        remaining_shield -= damage;
        sfx_play(snd_shield_hit, false);
        var equipped_shield = player_get_shield();
        shield_penalty_time = 0.25 * equipped_shield[shield_index.recharge_delay];
        previous_shield_penalty_time = shield_penalty_time;
    }
    else 
    {
        remaining_shield = 0;
        invincible = 30;
        var equipped_shield = player_get_shield();
        shield_penalty_time = equipped_shield[shield_index.recharge_delay];
        previous_shield_penalty_time = shield_penalty_time;
    }
} 
else 
{
    if(invincible == 0)
    {
        invincible = 15;
        if(instance_number(obj_ca) == 0)
        {
            instance_create(0,0, obj_ca);
        }
        with(obj_ca)
        {
            obj_ca.cadir = other.damage_dir;
            obj_ca.calen = 30;
        }
        entity_take_damage(); 
    }  
}

damage = 0;
