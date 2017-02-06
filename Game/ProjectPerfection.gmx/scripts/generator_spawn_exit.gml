///generator_spawn_exit(room)

var new_room = argument0;

var furthest_index = 0;
var best_dist = 0;
for(var i = 0; i < ds_list_size(room_list); i++)
{
    var dist = ds_list_find_value(room_d_list, i);
    if(dist > best_dist)
    {
        best_dist = dist;
        furthest_index = i;
    }
}

var rx = ds_list_find_value(room_x_list, furthest_index);
var ry = ds_list_find_value(room_y_list, furthest_index);
var rw = ds_list_find_value(room_w_list, furthest_index);
var rh = ds_list_find_value(room_h_list, furthest_index);

room_instance_add(new_room, (rx + (rw/2) - 1) * 64, (ry + (rh/2) - 1) * 64, obj_door);
