///ui_draw_weapon_comparison(x, y, held_item, other_item)

if(is_paused() || dead)
{
    exit;
}

var xp = argument0;
var yp = argument1;
var held_item = argument2;
var other_item = argument3;

if(!is_gun(held_item) || !is_gun(other_item))
{
    exit;
}

var move_value = (sprite_get_width(spr_tooltip_top_legendary) * 1.3 + 20);
var xpos = ui_draw_weapon_tooltip_comparison(xp, yp, other_item, held_item);
ui_draw_weapon_tooltip2(xpos - move_value, yp, held_item, true);


