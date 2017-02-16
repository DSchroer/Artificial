///inventory_get_subtype_name(type)

var type = argument0;

switch(type)
{
case weapon_subtype.pistol:
    return "Pistol";
case weapon_subtype.auto_rifle:
    return "Auto Rifle";
case weapon_subtype.heavy_rifle:
    return "Heavy Rifle";
case weapon_subtype.sniper_rifle:
    return "Sniper Rifle";
case weapon_subtype.smg:
    return "SMG";
case weapon_subtype.extended_magazine:
    return "Extended Magazine";
case weapon_subtype.superfast_reload:
    return "Quickload";
default:
    return "Error";
}

