///player_take_damage()
if(shield_active && remaining_shield > 0)
{
    // Hit shield.
    if(remaining_shield > damage)
    {
        remaining_shield -= damage;
    }
    else 
    {
        remaining_shield = 0;
        var equipped_shield = player_get_shield();
        var overkill_percent = (damage - remaining_shield) / equipped_shield[shield_index.max_health];
        if(overkill_percent > 0.2)
        {
            shield_penalty_time = equipped_shield[shield_index.recharge_delay] * (overkill_percent + 1);
        } 
        else 
        {
            shield_penalty_time = equipped_shield[shield_index.recharge_delay];
        }
        previous_shield_penalty_time = shield_penalty_time;
    }
} 
else 
{
    entity_take_damage();   
}

damage = 0;
