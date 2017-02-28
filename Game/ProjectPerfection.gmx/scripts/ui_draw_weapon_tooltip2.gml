///ui_draw_weapon_tooltip2(x, y, weapon)

///ui_draw_weapon_tooltip(x, y, weapon)

var xpos = argument0;
var ypos = argument1;
var weapon = argument2;

var background = spr_tooltip_top_unique;
var top_render_color = c_black;
switch(weapon[weapon_index.quality])
{
case item_quality.common:
    background = spr_tooltip_top_common;
    break;
case item_quality.uncommon:
    background = spr_tooltip_top_uncommon;
    break;
case item_quality.rare:
    background = spr_tooltip_top_rare;
    top_render_color = c_white;
    break;
case item_quality.epic:
    background = spr_tooltip_top_epic;
    break;
case item_quality.legendary:
    background = spr_tooltip_top_legendary;
    break;
case item_quality.unique:
    background = spr_tooltip_top_unique;
    break;
}

var background2 = spr_tooltip_body;
var bscale_x = 1.2;
var bscale_top_y = 2;
var bscale_bottom_y = 1;
var screen_width = display_get_gui_width();
var screen_height = display_get_gui_height();
// Force the tooltip fully on screen, if applicable
if(xpos + sprite_get_width(background) * bscale_x + 10 > screen_width)
{
    xpos = screen_width - sprite_get_width(background) * bscale_x - 10;
}
if(ypos + sprite_get_height(background) * bscale_top_y + sprite_get_height(background2) * bscale_bottom_y + 10 > screen_height)
{
    ypos = screen_height - (sprite_get_height(background) * bscale_top_y + sprite_get_height(background2) * bscale_bottom_y + 10 );
}

var border_size = 10;
var dmg = weapon[weapon_index.damage];
var fire_rate = (60 / weapon[weapon_index.fire_timeout]);
var reload_time = weapon[weapon_index.reload_timeout] / 60;
var bullet_capacity = weapon[weapon_index.capacity];
var quality_colour = ui_get_quality_colour(weapon[weapon_index.quality]);
var modifier_colour = ui_get_modifier_colour(weapon[weapon_index.modifier]);
var wname = weapon[weapon_index.name];
// Background
draw_sprite_ext(background, -1, xpos, ypos, bscale_x, bscale_top_y, 0, c_white, 1);
draw_sprite_ext(background2, -1, xpos, ypos + bscale_top_y * sprite_get_height(background), bscale_x, bscale_bottom_y, 0, c_white, 1);

xpos += border_size;
// Name
var title_scale = 2;
draw_text_transformed_color(xpos, ypos + 5, wname, title_scale, title_scale, 0, top_render_color, top_render_color, top_render_color, top_render_color, 1);
ypos += 7 + string_height(wname) * title_scale;

// Subtype
var stat_scale = 1;
line = inventory_get_modifier_name(weapon[weapon_index.modifier]) + " " + inventory_get_subtype_name(weapon[weapon_index.weapon_subtype]);
draw_text_transformed_color(xpos, ypos, line, stat_scale, stat_scale, 0, top_render_color, top_render_color, top_render_color, top_render_color, 1);
ypos += 3 + string_height(line);

// Rarity
line = ui_get_quality_string(weapon[weapon_index.quality]);
draw_text_transformed_color(xpos + sprite_get_width(background) * 1.2 - string_width(line) - 10, ypos - 12, line, stat_scale, stat_scale, 0, top_render_color, top_render_color, top_render_color, top_render_color, 1);
ypos += 3 + string_height(line);

ui_set_colour(c_white);
// Other stats
// Damage
var line = string(dmg) + " Damage";
draw_text_transformed(xpos, ypos, line, stat_scale, stat_scale, 0);
ypos += string_height(line) * stat_scale;
// ROF
line = string(fire_rate) + " Rate of Fire";
draw_text_transformed(xpos, ypos, line, stat_scale, stat_scale, 0);
ypos += 3 + string_height(line);
// Reload
line = string(reload_time) + " Second Reload";
draw_text_transformed(xpos, ypos, line, stat_scale, stat_scale, 0);
ypos += 3 + string_height(line);
//Capacity
line = string(bullet_capacity) + " Bullet Capacity";
draw_text_transformed(xpos, ypos, line, stat_scale, stat_scale, 0);
ypos += 3 + string_height(line);






