///generator_add_doors()
for(var i = 0; i < ds_list_size(room_list); i++)
{
    var rx = ds_list_find_value(room_x_list, i);
    var ry = ds_list_find_value(room_y_list, i);
    var rw = ds_list_find_value(room_w_list, i);
    var rh = ds_list_find_value(room_h_list, i);
    var flags = ds_list_find_value(room_flags, i);

    if((flags & stub_flags.no_door_up) == 0)
    {
        generator_place_door(rx + (rw/2) - 1, ry - 1, rx + (rw/2) + 1, ry + 1);
    }
    if((flags & stub_flags.no_door_down) == 0)
    {
        generator_place_door(rx + (rw/2) - 1, ry + rh - 1, rx + (rw/2) + 1, ry + rh + 1);
    }
    if((flags & stub_flags.no_door_left) == 0)
    {
        generator_place_door(rx - 1, ry + (rh/2) - 1, rx, ry + (rh/2) + 1);
    }
    if((flags & stub_flags.no_door_right) == 0)
    {
        generator_place_door(rx + rw - 1, ry + (rh/2) - 1, rx + rw, ry + (rh/2) + 1);
    }
}
