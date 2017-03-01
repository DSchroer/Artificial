
if(is_shield_active)
{
    if(shield_penalty_time > 0)
    {
        shield_penalty_time -= (delta_time / 1000000);
        remaining_shield = max(0, remaining_shield);
    }
    else
    {
        var val = shield_max_health * shield_recharge_rate * (delta_time / 1000000);
        remaining_shield += shield_max_health * shield_recharge_rate * (delta_time / 1000000);
        remaining_shield = min(remaining_shield, shield_max_health);
    } 
}
else 
{
    remaining_shield = 0;
}
