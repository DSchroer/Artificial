///ui_draw_weapon_tooltip_comparison(x, y, weapon, weapon_to_compare_to)

if(!ui_can_render_tooltips())
{
    exit;
}

var xpos = argument0;
var ypos = argument1;
var weapon = argument2;
var weapon_to_compare_to = argument3;

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
var bscale_x = 1.6;
var bscale_top_y = 2;
var bscale_bottom_y = 1.2;
var screen_width = display_get_gui_width();
var screen_height = display_get_gui_height();
// Force the tooltip fully on screen, if applicable
if(xpos + (sprite_get_width(background) * bscale_x + 10) * 2 > screen_width)
{
    xpos = screen_width - (sprite_get_width(background) * bscale_x + 10);
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

var other_dmg = weapon_to_compare_to[weapon_index.damage];
var other_fire_rate = (60 / weapon_to_compare_to[weapon_index.fire_timeout]);
var other_reload_time = weapon_to_compare_to[weapon_index.reload_timeout] / 60;
var other_bullet_capacity = weapon_to_compare_to[weapon_index.capacity];


// Background
draw_sprite_ext(background, -1, xpos, ypos, bscale_x, bscale_top_y, 0, c_white, 1);
draw_sprite_ext(background2, -1, xpos, ypos + bscale_top_y * sprite_get_height(background), bscale_x, bscale_bottom_y, 0, c_white, 1);

xpos += border_size;
// Name
var title_scale = 1.5;
draw_text_transformed_color(xpos, ypos + 5, wname, title_scale, title_scale, 0, top_render_color, top_render_color, top_render_color, top_render_color, 1);
ypos += 7 + string_height(wname) * 2;

// Subtype
var stat_scale = 1;
line = inventory_get_modifier_name(weapon[weapon_index.modifier]) + " " + inventory_get_subtype_name(weapon[weapon_index.weapon_subtype]);
draw_text_transformed_color(xpos, ypos + 8, line, stat_scale, stat_scale, 0, top_render_color, top_render_color, top_render_color, top_render_color, 1);
ypos += 3 + string_height(line);

// Rarity
line = ui_get_quality_string(weapon[weapon_index.quality]);
draw_text_transformed_color(xpos + sprite_get_width(background) * bscale_x - string_width(line) - 10, ypos - 12, line, stat_scale, stat_scale, 0, top_render_color, top_render_color, top_render_color, top_render_color, 1);
ypos += 3 + string_height(line);

// Other stats

// Damage
var draw_img = spr_arrow_equal;
var draw_color = c_white;
var line = string(dmg) + " Damage";
if(dmg > other_dmg)
{
    draw_img = spr_arrow_up;
}
else if(dmg == other_dmg)
{
    draw_img = spr_arrow_equal;
}
else 
{
    draw_img = spr_arrow_down;
}
draw_sprite(draw_img, -1, xpos, ypos);
draw_text_transformed_color(xpos + sprite_get_width(draw_img) + 4, ypos, line, stat_scale, stat_scale, 0, draw_color, draw_color, draw_color, draw_color, 1);
ypos += string_height(line) * stat_scale;
// ROF
line = string(fire_rate) + " Rate of Fire";
if(fire_rate > other_fire_rate)
{
    draw_img = spr_arrow_up;
}
else if(fire_rate == other_fire_rate)
{
    draw_img = spr_arrow_equal;
}
else 
{
    draw_img = spr_arrow_down;
}
draw_sprite(draw_img, -1, xpos, ypos);
draw_text_transformed_color(xpos + sprite_get_width(draw_img) + 4, ypos, line, stat_scale, stat_scale, 0, draw_color, draw_color, draw_color, draw_color, 1);
ypos += 3 + string_height(line);
// Reload
line = string(reload_time) + " Second Reload";
if(reload_time > other_reload_time)
{
    draw_img = spr_arrow_up_red;
}
else if(reload_time == other_reload_time)
{
    draw_img = spr_arrow_equal;
}
else 
{
    draw_img = spr_arrow_down_green;
}
draw_sprite(draw_img, -1, xpos, ypos);
draw_text_transformed_color(xpos + sprite_get_width(draw_img) + 4, ypos, line, stat_scale, stat_scale, 0, draw_color, draw_color, draw_color, draw_color, 1);
ypos += 3 + string_height(line);
//Capacity
line = string(bullet_capacity) + " Bullet Capacity";
if(bullet_capacity > other_bullet_capacity)
{
    draw_img = spr_arrow_up;
}
else if(bullet_capacity == other_bullet_capacity)
{
    draw_img = spr_arrow_equal;
}
else 
{
    draw_img = spr_arrow_down;
}
draw_sprite(draw_img, -1, xpos, ypos);
draw_text_transformed_color(xpos + sprite_get_width(draw_img) + 4, ypos, line, stat_scale, stat_scale, 0, draw_color, draw_color, draw_color, draw_color, 1);
ypos += 3 + string_height(line);

return xpos;
