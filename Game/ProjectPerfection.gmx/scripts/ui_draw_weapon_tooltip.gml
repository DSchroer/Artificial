///ui_draw_weapon_tooltip(x, y, weapon)

var xpos = argument0;
var ypos = argument1;
var weapon = argument2;

var text;
var args;
var c = 0;
text[c++] = inventory_get_modifier_name(weapon[weapon_index.modifier]);
args[c] = "|green";
text[c++] = string(weapon[weapon_index.damage]) + " Damage";
args[c] = "|white";
text[c++] = string(1.0 / weapon[weapon_index.fire_timeout]) + " Firerate";
args[c] = 0; 
if(weapon[weapon_index.modifier] != weapon_modifier.sword)
{
    text[c++] = string(weapon[weapon_index.capacity]) + " Bullet Capacity";
    args[c] = 0;
}

ui_draw_tooltip(xpos, ypos, text, args);




