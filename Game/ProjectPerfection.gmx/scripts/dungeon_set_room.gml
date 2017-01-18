///dungeon_set_room(room, x, y, width, height)
var room_ptr = argument0;
var room_x1 = argument1;
var room_y1 = argument2;
var room_x2 = room_x1 + argument3 - 1;
var room_y2 = room_y1 + argument4 - 1;

if(room_x1 < 0)
{
    return false;
}

if(room_y1 < 0)
{
    return false;
}

if(room_x2 >= width)
{
    return false;
}

if(room_y2 >= height)
{
    return false;
}

if(ds_grid_get_max(room_grid, room_x1, room_y1, room_x2, room_y2) > 0)
{
    return false;
}

room_number += 1;
ds_grid_set_region(room_grid, room_x1, room_y1, room_x2, room_y2, room_number);
ds_list_insert(room_list, room_number, room_ptr);

return true;
