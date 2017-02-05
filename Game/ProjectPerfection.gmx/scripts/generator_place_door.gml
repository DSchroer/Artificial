///generator_place_door(x1, y1, x2, y2)
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

if(x1 < 0 || x2 >= width)
{
    return 0;
}

if(y1 < 0 || y2 >= height)
{
    return 0;
}

if(ds_grid_get_min(room_grid, x1, y1, x2, y2) > 0)
{
   ds_grid_set_region(door_grid, x1, y1, x2, y2, 1)
}
