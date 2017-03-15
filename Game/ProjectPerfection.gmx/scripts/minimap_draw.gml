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

var px = xp + (map_diameter / 2) + 5; 
var py = yp + (map_diameter / 2) + 5;

var enemies = level_stub_find_all_ext(obj_enemy, obj_player);
for(var i = 0; i < array_length_1d(enemies); i++)
{
    var enemy = enemies[i];
    if(enemy.object_index == obj_mine_trap || enemy.object_index == obj_snare_trap)
    {
        continue;
    }
    
    var dx = ((obj_player.x - enemy.x) / 64) * map_size;
    var dy = ((obj_player.y - enemy.y) / 64) * map_size;
    
    draw_sprite(spr_map_enemy, 0, px - dx, py - dy);
}

minimap_draw_symbol(obj_health_can, spr_map_health, px, py, map_size);
minimap_draw_symbol(obj_item, spr_map_gun, px, py, map_size);
minimap_draw_symbol(obj_chest, spr_map_chest, px, py, map_size);
minimap_draw_symbol(obj_book, spr_map_lore, px, py, map_size);
minimap_draw_symbol(obj_door, spr_map_exit, px, py, map_size);

if(player_exists())
{
    draw_sprite(spr_map_player, 0, px, py);
}

if(fog != -1 && surface_exists(fog))
{
    draw_surface_part_ext(fog, -play_x / map_size, -play_y / map_size, (sprite_get_width(spr_map_border) - 10) / map_size, (sprite_get_height(spr_map_border) - 10) / map_size, xp + 5, yp + 5, map_size, map_size, c_white, 1);
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



