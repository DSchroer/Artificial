///player_update_gun(gun)
var gun = argument0;

if(gun[weapon_index.reload_cooldown] > 0)
{
    --gun[weapon_index.reload_cooldown];
}

if(gun[weapon_index.fire_cooldown] > 0)
{
    --gun[weapon_index.fire_cooldown];
}

return gun;
