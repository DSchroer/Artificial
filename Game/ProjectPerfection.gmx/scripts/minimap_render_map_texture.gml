///minimap_render_map_texture()
if(level != -1)
{    
    var surface = surface_create(level.width * map_size, level.height * map_size);
    
    surface_set_target(surface);
    draw_clear(c_black);
    
    var grid = ds_grid_create(level.width, level.height);
    
    var ids = tile_get_ids();
    for(var i = 0; i < array_length_1d(ids); i++)
    {
        var tile = ids[i];
        var tx = tile_get_x(tile) / 64;
        var ty = tile_get_y(tile) / 64;
        var tx1 = tx + (tile_get_width(tile) / 64);
        var ty1 = ty + (tile_get_height(tile) / 64);
        var tdepth = tile_get_depth(tile);
        
        if(tdepth > 0)
        {
            draw_rectangle_color(tx * map_size, ty * map_size, tx1 * map_size, ty1 * map_size, fill_color, fill_color, fill_color, fill_color, false);
            ds_grid_set_region(grid, tx, ty, tx1, ty1, 1);
        }
    }
    
    for(var i = 0; i < level.width; i++)
    {
        for(var j = 0; j < level.height; j++)
        {
            var edge = false;
            edge = edge || ds_grid_get(grid, i + 1, j) != 1;
            edge = edge || ds_grid_get(grid, i - 1, j) != 1;
            edge = edge || ds_grid_get(grid, i, j + 1) != 1;
            edge = edge || ds_grid_get(grid, i, j - 1) != 1;
            
            var c_room = ds_grid_get(level.room_grid, i, j);
            edge = edge || ds_grid_get(level.room_grid, i + 1, j) != c_room;
            edge = edge || ds_grid_get(level.room_grid, i - 1, j) != c_room;
            edge = edge || ds_grid_get(level.room_grid, i, j + 1) != c_room;
            edge = edge || ds_grid_get(level.room_grid, i, j - 1) != c_room;
            
            if(edge && ds_grid_get(grid, i, j) == 1)
            {
                if(ds_grid_get(level.door_grid, i, j) > 0)
                {
                    draw_rectangle_color(i * map_size, j * map_size, (i + 1) * map_size, (j + 1) * map_size, c_green, c_green, c_green, c_green, false);
                }else{
                    draw_rectangle_color(i * map_size, j * map_size, (i + 1) * map_size, (j + 1) * map_size, c_black, c_black, c_black, c_black, false);
                }
            }
        }
    }
    ds_grid_destroy(grid);
    
    surface_reset_target();
    map_texture = sprite_create_from_surface(surface, 0, 0, level.width * map_size, level.height * map_size, false, true, 0, 0);
    surface_free(surface);
}
