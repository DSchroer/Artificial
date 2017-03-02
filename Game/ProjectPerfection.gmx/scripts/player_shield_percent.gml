///player_shield_percent()
if(is_shield_active)
{
    return remaining_shield / shield_max_health;
}
else 
{
    return 0;
}

