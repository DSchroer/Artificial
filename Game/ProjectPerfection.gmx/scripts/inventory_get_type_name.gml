///inventory_get_type_name(weapon_type_enum)

var weapon_type_enum = argument0;

switch(weapon_type_enum)
{
    case weapon_type.sword:
        return "Sword";
    case weapon_type.rail:
        return "Rail";
    case weapon_type.plasma:
        return "Plasma";
    default: 
        return "Error";
}