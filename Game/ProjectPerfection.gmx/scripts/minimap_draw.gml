///minimap_draw(x, y)
if(is_paused() || !map_should_draw())
{
    exit;
}

if(level != -1 && instance_exists(level))
{
    if(map_texture == -1)
    {
        minimap_render_map_texture();
    }
    
    with(level)
    {
        if(player_exists())
        {
            other.center_x = level_position_x(obj_player.x);
            other.center_y = level_position_y(obj_player.y);
        }
    }
}else{
    exit;
}

var xp = display_get_gui_width() - 30 - map_diameter;
var yp = 10;

draw_rectangle_color(xp, yp, xp + sprite_get_width(spr_map_border), yp + sprite_get_height(spr_map_border), c_black, c_black, c_black, c_black, false);

var play_x = (map_diameter / 2) - (center_x * map_size);
var play_y = (map_diameter / 2) - (center_y * map_size);
if(map_texture != -1)
{
    draw_sprite_part(map_texture, 0, -play_x, -play_y, sprite_get_width(spr_map_border) - 10, sprite_get_height(spr_map_border) - 10, xp + 5, yp + 5);
}

var fog = -1;
if(level != -1 && instance_exists(level))
{
    with(level)
    {
        fog = fog_surface;
    }
}

if(fog != -1 && surface_exists(fog))
{
    draw_surface_part_ext(fog, -play_x / map_size, -play_y / map_size, (sprite_get_width(spr_map_border) - 10) / map_size, (sprite_get_height(spr_map_border) - 10) / map_size, xp + 5, yp + 5, map_size, map_size, c_white, 1);
}

if(player_exists())
{
    draw_rectangle_color(xp + (map_diameter / 2) + 4, yp + (map_diameter / 2) + 4, xp + (map_diameter / 2) + 6, yp + (map_diameter / 2) + 6, c_red, c_red, c_red, c_red, false)
}

draw_rectangle_color(xp + 5, yp + map_diameter - 12, xp + map_diameter + 10, yp + map_diameter + 10, c_black, c_black, c_black, c_black, false);

var d = 1;
with(obj_progress)
{
    d = progress + 1;
}
draw_text_color(xp + 10, yp + map_diameter - 10, "Depth: " + string(d), c_white, c_white, c_white, c_white, 1);

draw_set_halign(fa_right);

var seconds = floor(level_time / 60);
var minutes = floor(seconds / 60);
seconds = seconds % 60;
var data_s = string(seconds);
if(seconds < 10)
{
    data_s = "0" + data_s;
}
data_s = string(minutes) + ":" + data_s;

draw_text_color(xp + map_diameter + 8, yp + map_diameter - 10, data_s, c_white, c_white, c_white, c_white, 1);

draw_set_halign(fa_left);

draw_sprite(spr_map_border, -1, xp, yp);



