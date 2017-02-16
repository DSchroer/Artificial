///ui_get_modifier_colour(weapon_mod)

var weapon_mod = argument0;

switch(weapon_mod)
{
case weapon_modifier.normal:
    return "|white";
    break;
case weapon_modifier.plasma:
    return "|plasma";
    break;
case weapon_modifier.rail:
    return "|rail";
    break;
case weapon_modifier.scatter:
    return "|rail";
    break;
    
default:
    return "|white";

}
