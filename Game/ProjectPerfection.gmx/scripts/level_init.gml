///level_init(width, height)
width = argument0;
height = argument1;

room_grid = ds_grid_create(width, height);
door_grid = ds_grid_create(width, height);

current_room = 0;
fog_changed = false;

room_list = ds_list_create();
room_d_list = ds_list_create();
room_x_list = ds_list_create();
room_y_list = ds_list_create();
room_w_list = ds_list_create();
room_h_list = ds_list_create();
fog_list = ds_list_create();
