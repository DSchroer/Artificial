///attack_gun(weapon, x, y, direction, ignore)
var weapon = argument0;
var xpos = argument1;
var ypos = argument2;
var dir = argument3;
var ignore = argument4;

if(is_paused())
{
    exit;
}

switch(weapon[weapon_index.modifier])
{
    case weapon_modifier.rail:
        attack_rail(weapon, xpos, ypos, dir, ignore);
        break;
    case weapon_modifier.plasma:
        attack_plasma(weapon, xpos, ypos, dir, ignore);
        break;
    case weapon_modifier.sword:
        attack_sword(weapon, xpos, ypos, dir, ignore);
        break;
}
