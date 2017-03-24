///generator_create_level()
var level = level_create(width, height);

with(level)
{
    ds_grid_copy(room_grid, other.room_grid);
    ds_grid_copy(door_grid, other.door_grid);
    
    ds_list_copy(room_list, other.room_list);
    
    ds_list_copy(room_d_list, other.room_x_list);
    ds_list_copy(room_x_list, other.room_x_list);
    ds_list_copy(room_y_list, other.room_y_list);
    ds_list_copy(room_w_list, other.room_w_list);
    ds_list_copy(room_h_list, other.room_h_list);
    
    ds_map_copy(spawn_map, other.spawn_map);
    
    ds_list_copy(room_flag_list, other.room_flags);
}

return level;
