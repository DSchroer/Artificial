///player_reload(weapon)
var weapon = argument0;

if(is_array(weapon))
{
    if(weapon[weapon_index.remaining] != weapon[weapon_index.capacity])
    {
        weapon[weapon_index.remaining] = weapon[weapon_index.capacity];
        weapon[weapon_index.reload_cooldown] = weapon[weapon_index.reload_timeout];
    }
}

return weapon;

