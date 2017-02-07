///generator_spawn_at(key, room, object)
var key = argument0;
var new_room = argument1;
var obj = argument2;

var rx = ds_list_find_value(room_x_list, key);
var ry = ds_list_find_value(room_y_list, key);
var rw = ds_list_find_value(room_w_list, key);
var rh = ds_list_find_value(room_h_list, key);

room_instance_add(new_room, (rx + (rw/2) - 1) * 64, (ry + (rh/2) - 1) * 64, obj);
