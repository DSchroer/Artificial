///minimap_outline_room(index)
var i = argument0;

var r = ds_list_find_value(level.room_list, i);
var x1 = ds_list_find_value(level.room_x_list, i);
var y1 = ds_list_find_value(level.room_y_list, i);
var x2 = x1 + ds_list_find_value(level.room_w_list, i);
var y2 = y1 + ds_list_find_value(level.room_h_list, i);

draw_rectangle(x1 * map_size, y1 * map_size, x2 * map_size, y2 * map_size, true);
