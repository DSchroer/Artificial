///level_destroy()
ds_grid_destroy(room_grid);
ds_grid_destroy(door_grid);

ds_list_destroy(room_list);
ds_list_destroy(room_d_list);
ds_list_destroy(room_x_list);
ds_list_destroy(room_y_list);
ds_list_destroy(room_w_list);
ds_list_destroy(room_h_list);
ds_list_destroy(room_flag_list);

ds_map_destroy(spawn_map);

ds_list_destroy(fog_list);
ds_list_destroy(fog_rendered_list);
if(surface_exists(fog_surface))
{
    surface_free(fog_surface);
}