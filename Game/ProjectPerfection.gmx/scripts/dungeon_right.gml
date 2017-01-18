///dungeon_right(room_index, x2, ymid)
var room_index = argument0;
var x2 = argument1;
var y_mid = argument2;

var room_p = ds_list_find_value(option_rooms, room_index);
var room_w = ds_list_find_value(option_width, room_index);
var room_h = ds_list_find_value(option_height, room_index);

var n_x1 = x2;
var n_y1 = y_mid - (room_h / 2);

if(dungeon_set_room(room_p, n_x1, n_y1, room_w, room_h))
{
    dungeon_populate(n_x1, n_y1, room_w, room_h);
}
