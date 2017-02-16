
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
        remaining_shield -= (0.05 * equipped_shield[shield_index.max_health] * (delta_time / 1000000));
    }
}
else 
{
    remaining_shield = 0;
}

if(shield_active && remaining_shield > 0)
{
    sfx_play_volume(snd_hum, false, 0.4);
}
else
{
    sfx_stop(snd_hum);
}
