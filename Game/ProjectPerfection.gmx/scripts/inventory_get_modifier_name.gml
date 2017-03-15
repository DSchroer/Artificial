///inventory_get_modifier_name(weapon_type_enum)

var weapon_modifier_enum = argument0;

switch(weapon_modifier_enum)
{
    case weapon_modifier.normal:
        return "Regular";
    case weapon_modifier.rail:
        return "Laser";
    case weapon_modifier.plasma:
        return "Plasma";
    case weapon_modifier.scatter:
        return "Scatter";
    case weapon_modifier.rocket:
        return "Rocket";
    default: 
        return "Error";
}
