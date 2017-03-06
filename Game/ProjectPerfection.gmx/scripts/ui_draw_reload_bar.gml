///ui_draw_reload_bar();

var width = display_get_gui_width();
var height = display_get_gui_height();
var scale_x = 0.25;
var scale_y = 0.6;
var xp = (width - sprite_get_width(spr_bossback) * scale_x) / 2;
var yp = 128;

var weapon = inventory[selected_slot];
if(!is_gun(weapon))
{   
    exit;
}
var reload_time = weapon[weapon_index.reload_timeout];
var reload_remaining = weapon[weapon_index.reload_cooldown];
if(reload_remaining <= 0)
{
    exit;
}
var percent_remaining = reload_remaining / reload_time;
if(percent_remaining < 0)
{
    exit;
}
percent_remaining = 1 - percent_remaining;

draw_sprite_ext(spr_bossback, -1, xp, yp, scale_x, scale_y, 0, c_white, 1);
draw_sprite_part_ext(spr_reload_middle, -1, 0, 0, sprite_get_width(spr_reload_middle) * percent_remaining - 7, sprite_get_height(spr_reload_middle), xp, yp, scale_x, scale_y, c_white, 1);
draw_sprite_ext(spr_bossfront, -1, xp, yp, scale_x, scale_y, 0, c_white, 1);

draw_set_color(c_white);
var text = "Reloading";
//draw_text((width - string_width(text)) / 2, yp + (sprite_get_height(spr_bossback) - string_height(combined)) / 2, combined);
draw_text((width - string_width(text)) / 2, yp + (sprite_get_height(spr_bossback) * scale_y - string_height(text)) / 2, text);

