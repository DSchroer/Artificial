///generator_left(room_index, x1, ymid, distance)
var room_index = argument0;
var x1 = argument1;
var y_mid = argument2;
var distance = argument3;

var room_p = ds_list_find_value(option_rooms, room_index);
var room_w = ds_list_find_value(option_width, room_index);
var room_h = ds_list_find_value(option_height, room_index);

var n_x1 = x1 - room_w;
var n_y1 = y_mid - (room_h / 2);

if(generator_set_room(room_p, n_x1, n_y1, room_w, room_h, distance))
{
    generator_populate(n_x1, n_y1, room_w, room_h, distance);
    return true;
}else{
    return false;
}
