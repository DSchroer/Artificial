///generator_init(width, height)
width = argument0;
height = argument1;
room_number = 0;
level = -1;

constructing = false;
itteration = 0;

option_rooms = ds_list_create();
option_width = ds_list_create();
option_height = ds_list_create();
option_flags = ds_list_create();

room_grid = ds_grid_create(width, height);

room_list = ds_list_create();

room_d_list = ds_list_create();//room distance list
room_e_list = ds_list_create();//room entrance list

room_x_list = ds_list_create();
room_y_list = ds_list_create();
room_w_list = ds_list_create();
room_h_list = ds_list_create();
room_flags = ds_list_create();

door_grid = ds_grid_create(width, height);

spawn_map = ds_map_create();

