///level_draw_fog
var col = draw_get_color();
draw_set_color(c_black);
for(var i = 0; i < ds_list_size(room_list); i++)
{
    var fog = ds_list_find_value(fog_list, i);
    if(fog == 1)
    {
        continue;
    }
    var rx = ds_list_find_value(room_x_list, i) * 64;
    var ry = ds_list_find_value(room_y_list, i) * 64;
    var rw = ds_list_find_value(room_w_list, i) * 64;
    var rh = ds_list_find_value(room_h_list, i) * 64;
    
    draw_rectangle(rx, ry, rx + rw, ry + rh, false);
}
draw_set_color(col);
