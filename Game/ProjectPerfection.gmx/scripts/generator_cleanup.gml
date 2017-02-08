///generator_cleanup()
ds_list_destroy(option_rooms);
ds_list_destroy(option_width);
ds_list_destroy(option_height);
ds_list_destroy(option_flags);

ds_grid_destroy(room_grid);
ds_grid_destroy(door_grid);

ds_list_destroy(room_list);
ds_list_destroy(room_x_list);
ds_list_destroy(room_y_list);
ds_list_destroy(room_w_list);
ds_list_destroy(room_h_list);
ds_list_destroy(room_d_list);
ds_list_destroy(room_e_list);
ds_list_destroy(room_flags);

ds_map_destroy(spawn_map);
