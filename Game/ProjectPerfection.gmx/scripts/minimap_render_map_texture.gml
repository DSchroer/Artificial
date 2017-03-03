///minimap_render_map_texture()
if(level != -1)
{    
    var surface = surface_create(level.width * map_size, level.height * map_size);
    
    surface_set_target(surface);
    draw_clear_alpha(c_black, 0);
    
    for(var i = 0; i < ds_list_size(level.room_list); i++)
    {
        var fog = ds_list_find_value(level.fog_list, i);
        if(fog == 0)
        {
            continue;
        }
    
        var r = ds_list_find_value(level.room_list, i);
        var x1 = ds_list_find_value(level.room_x_list, i);
        var y1 = ds_list_find_value(level.room_y_list, i);
        var x2 = x1 + ds_list_find_value(level.room_w_list, i);
        var y2 = y1 + ds_list_find_value(level.room_h_list, i);
        
        draw_rectangle_color(x1 * map_size, y1 * map_size, x2 * map_size, y2 * map_size, fill_color, fill_color, fill_color, fill_color, false);
        draw_rectangle(x1 * map_size, y1 * map_size, x2 * map_size, y2 * map_size, true);
    }
    
    surface_reset_target();
    map_texture = sprite_create_from_surface(surface, 0, 0, level.width * map_size, level.height * map_size, false, true, 0, 0);
    surface_free(surface);
}
