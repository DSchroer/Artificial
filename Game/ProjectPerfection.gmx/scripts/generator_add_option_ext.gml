///generator_add_option_ext(room, width, height, flags)
enum stub_flags{
    stop_shortcut = 1 << 0,
    no_door_up = 1 << 1,
    no_door_down = 1 << 2,
    no_door_left = 1 << 3,
    no_door_right = 1 << 4,
}

ds_list_add(option_rooms, argument0);
ds_list_add(option_width, argument1);
ds_list_add(option_height, argument2);
ds_list_add(option_flags, argument3);
