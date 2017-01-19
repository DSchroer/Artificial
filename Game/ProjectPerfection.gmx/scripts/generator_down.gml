///generator_down(room_index, y2, xmid)
var room_index = argument0;
var y2 = argument1;
var x_mid = argument2;

var room_p = ds_list_find_value(option_rooms, room_index);
var room_w = ds_list_find_value(option_width, room_index);
var room_h = ds_list_find_value(option_height, room_index);

var n_x1 = x_mid - (room_w / 2);
var n_y1 = y2;

if(generator_set_room(room_p, n_x1, n_y1, room_w, room_h))
{
    generator_populate(n_x1, n_y1, room_w, room_h);
}
