///generator_clear()
room_number = 0;

ds_grid_clear(room_grid, 0);
ds_grid_clear(door_grid, 0);
ds_list_clear(room_list);
ds_list_clear(room_x_list);
ds_list_clear(room_y_list);
ds_list_clear(room_w_list);
ds_list_clear(room_h_list);
ds_list_clear(room_d_list);
ds_list_clear(room_flags);
ds_list_clear(room_e_list);
ds_map_clear(spawn_map);
