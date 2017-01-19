///level_init(width, height)
width = argument0;
height = argument1;

room_grid = ds_grid_create(width, height);

current_room = 0;

room_list = ds_list_create();
room_x_list = ds_list_create();
room_y_list = ds_list_create();
room_w_list = ds_list_create();
room_h_list = ds_list_create();
