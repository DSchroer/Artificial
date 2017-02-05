///ui_draw_weapon_tooltip(x, y, weapon)

var xpos = argument0;
var ypos = argument1;
var weapon = argument2;

var c = 0;
var lines;
lines[c++] = string(weapon[weapon_index.name]);
lines[c++] = string(weapon[weapon_index.type]);
lines[c++] = string(weapon[weapon_index.modifier]);
lines[c++] = string(weapon[weapon_index.damage]) + " Damage";
lines[c++] = string(weapon[weapon_index.fire_rate]) + " Firerate";
lines[c++] = string(weapon[weapon_index.capacity]) + " Bullet Capacity";

ui_draw_textbox_lines(xpos, ypos, lines, spr_tooltip, true);




