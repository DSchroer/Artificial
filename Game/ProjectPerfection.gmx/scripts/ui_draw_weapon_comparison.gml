///ui_draw_weapon_comparison(x, y, weapon, weapon_to_compare_to)

var xp = argument0;
var yp = argument1;
var weapon1 = argument2;
var weapon2 = argument3;

ui_draw_weapon_tooltip_comparison(xp, yp, weapon1, weapon2);
ui_draw_weapon_tooltip2(xp + sprite_get_width(spr_tooltip_top_legendary) * 1.3 + 10, yp, weapon2);


