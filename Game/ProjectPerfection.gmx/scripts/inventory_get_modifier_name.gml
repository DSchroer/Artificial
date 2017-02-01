///inventory_get_modifier_name(weapon_modifier_enum)

var weapon_modifier_enum = argument0;

switch(weapon_modifier_enum)
{
    case weapon_modifier.rail:
        return "Rail";
    case weapon_modifier.plasma:
        return "Plasma";
    default:
        return "Error";
}
