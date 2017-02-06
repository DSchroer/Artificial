
var equipped_shield = player_get_shield();
if(is_array(equipped_shield))
{
    if(shield_penalty_time > 0)
    {
        shield_penalty_time -= (delta_time / 1000000);
        remaining_shield = 0;
    }
    else if(!shield_active)
    {
        remaining_shield += equipped_shield[shield_index.recharge_rate] * (delta_time / 1000000);
        remaining_shield = min(remaining_shield, equipped_shield[shield_index.max_health]);
    } 
    else 
    {
        var shield_damage = (20 * (delta_time / 1000000));
        // This line is a workaround for now - it cauases the player's shield 
        // to properly break again after recharging if they keep holding the button
        remaining_shield -= shield_damage * 0.5;
        player_take_damage(shield_damage);
    }
}
else 
{
    remaining_shield = 0;
}
