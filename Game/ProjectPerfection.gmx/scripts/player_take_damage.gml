///player_take_damage()

if(invincible == 0)
{
    invincible = 15;

    // Put shield on cooldown
    if(is_shield_active)
    {
        shield_penalty_time = max(shield_penalty_time, shield_recharge_delay);
        previous_shield_penalty_time = shield_penalty_time;
    }
    
    // Do damage
    if(remaining_shield > 0 && remaining_shield >= damage)
    {
        remaining_shield -= damage;
        var hit = instance_create(x, y, obj_shield_hit);
        hit.direction = damage_dir + 180;
        ui_flash_shieldbar();
        sfx_play(snd_shield_hit, false);
    }
    else 
    {
        if(remaining_shield > 0)
        {
            damage -= remaining_shield;
            remaining_shield = 0;
        }

        if(instance_number(obj_ca) == 0)
        {
            instance_create(0, 0, obj_ca);
        }
        with(obj_ca)
        {
            obj_ca.cadir = other.damage_dir;
            obj_ca.calen = 30;
        }
        ui_flash_healthbar();
        entity_take_damage(); 
    }
}  

damage = 0;
