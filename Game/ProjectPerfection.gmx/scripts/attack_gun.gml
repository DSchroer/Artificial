///attack_gun(weapon, x, y, direction, ignore)
var weapon = argument0;
var xpos = argument1;
var ypos = argument2;
var dir = argument3;
var ignore = argument4;

if(is_paused())
{
    return weapon;
    exit;
}

if(weapon[weapon_index.reload_cooldown] > 0 || weapon[weapon_index.fire_cooldown] > 0)
{    
    return weapon;
    exit;
}

if(--weapon[weapon_index.remaining] <= 0)
{
    weapon = player_reload(weapon); 
}

weapon[weapon_index.fire_cooldown] = weapon[weapon_index.fire_timeout];

if(self.object_index == obj_player)
{
    with(obj_camera)
    {
        camera_shake(15);
    }
}


switch(weapon[weapon_index.modifier])
{
    case weapon_modifier.normal:
        attack_normal(weapon, xpos, ypos, dir, ignore);
        break;
    case weapon_modifier.plasma:
        attack_plasma(weapon, xpos, ypos, dir, ignore);
        break;
    case weapon_modifier.rail:
        attack_rail(weapon, xpos, ypos, dir, ignore);
        break;
    case weapon_modifier.scatter:
        attack_scatter(weapon, xpos, ypos, dir, ignore);
        break;
}

return weapon;
