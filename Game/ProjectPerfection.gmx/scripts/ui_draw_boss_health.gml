///ui_draw_boss_health()

var width = display_get_gui_width();
var height = display_get_gui_height();
var xp = (width - sprite_get_width(spr_bossback)) / 2;
var yp = 20;

var current_boss_health = 100;
var max_boss_health = 100;
var percent_remaining = ui_get_boss_health_percent(); // current_boss_health / max_boss_health;

if(percent_remaining < 0)
{
    exit;
}

draw_sprite(spr_bossback, -1, xp, yp);
draw_sprite_part(spr_bosshealth, -1, 0, 0, sprite_get_width(spr_bosshealth) * percent_remaining - 7, sprite_get_height(spr_bosshealth), xp, yp);
draw_sprite(spr_bossfront, -1, xp, yp);

draw_set_color(c_white);
//draw_text((width - string_width(combined)) / 2, yp + (sprite_get_height(spr_bossback) - string_height(combined)) / 2, combined);
//draw_text((width - string_width(combined)) / 2, yp + (sprite_get_height(spr_bossback) - string_height(combined)) / 2, "Azar, The Unbreakable");


