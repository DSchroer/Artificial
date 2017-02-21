
var equipped_shield = player_get_shield();
if(is_array(equipped_shield))
{
    if(shield_penalty_time > 0)
    {
        shield_penalty_time -= (delta_time / 1000000);
        remaining_shield = max(0, remaining_shield);
    }
    else
    {
        remaining_shield += equipped_shield[shield_index.recharge_rate] * (delta_time / 1000000);
        remaining_shield = min(remaining_shield, equipped_shield[shield_index.max_health]);
    } 
}
else 
{
    remaining_shield = 0;
}
