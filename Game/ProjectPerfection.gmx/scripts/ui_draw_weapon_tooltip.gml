///ui_draw_weapon_tooltip(x, y, weapon)

var xpos = argument0;
var ypos = argument1;
var weapon = argument2;

var text;
var args;
var c = 0;
text[c++] = string(weapon[weapon_index.name]);
text[c++] = inventory_get_type_name(weapon[weapon_index.type]);
text[c++] = inventory_get_modifier_name(weapon[weapon_index.modifier]);
text[c++] = string(weapon[weapon_index.damage]) + " Damage";
text[c++] = string(weapon[weapon_index.fire_rate]) + " Firerate";
text[c++] = string(weapon[weapon_index.capacity]) + " Bullet Capacity";

args[0] = 0;
args[1] = "|green";
args[2] = "|green";
args[3] = "|white";
args[4] = 0;
args[5] = 0;



ui_draw_tooltip(xpos, ypos, text, args);




