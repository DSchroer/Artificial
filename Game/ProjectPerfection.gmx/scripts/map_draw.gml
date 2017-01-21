///map_draw()
if(level != -1)
{
    var size = 30;
    for(var i = 0; i < ds_list_size(level.room_list); i++)
    {
        var r = ds_list_find_value(level.room_list, i);
        var x1 = ds_list_find_value(level.room_x_list, i);
        var y1 = ds_list_find_value(level.room_y_list, i);
        var x2 = x1 + ds_list_find_value(level.room_w_list, i);
        var y2 = y1 + ds_list_find_value(level.room_h_list, i);
        
        draw_rectangle_color(x1 * size, y1 * size, x2 * size, y2 * size, fill_color, fill_color, fill_color, fill_color, false);
        draw_rectangle(x1 * size, y1 * size, x2 * size, y2 * size, true);
        draw_text(x1 * size, y1 * size, string(i));
    }
}
