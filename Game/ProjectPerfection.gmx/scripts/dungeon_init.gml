///dungeon_init(width, height)
randomize();
width = argument0;
height = argument1;
room_number = 0;

option_rooms = ds_list_create();
option_width = ds_list_create();
option_height = ds_list_create();

room_grid = ds_grid_create(width, height);
door_grid = ds_grid_create(width, height);
room_list = ds_list_create();
