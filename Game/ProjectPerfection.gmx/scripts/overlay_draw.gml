///overlay_draw()
if(draw && level != -1)
{
    var size = 64;
    for(var i = 0; i < ds_list_size(level.room_list); i++)
    {
        if(i == level.current_room)
        {
            continue;
        }
    
        var r = ds_list_find_value(level.room_list, i);
        var x1 = ds_list_find_value(level.room_x_list, i);
        var y1 = ds_list_find_value(level.room_y_list, i);
        var x2 = x1 + ds_list_find_value(level.room_w_list, i);
        var y2 = y1 + ds_list_find_value(level.room_h_list, i);
        
        var cx = ds_list_find_value(level.room_x_list, level.current_room);
        var cy = ds_list_find_value(level.room_y_list, level.current_room);
        
        x1 -= cx;
        y1 -= cy;
        x2 -= cx;
        y2 -= cy;
        
        if(array_length_1d(display_sprites) > i)
        {
            var sprite = display_sprites[i];
            if(sprite != 0)
            {
                draw_sprite(sprite, 0, x1 * size, y1 * size);
            }else{
                 draw_rectangle(x1 * size, y1 * size, x2 * size, y2 * size, false);
            }
        }else{
             draw_rectangle(x1 * size, y1 * size, x2 * size, y2 * size, false);
        }
    }
}
