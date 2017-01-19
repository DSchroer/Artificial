///level_grid_value(x, y)
var x_in = argument0;
var y_in = argument1;

if(x_in < 0 || x_in > width)
{
    return 0;
}

if(y_in < 0 || y_in > height)
{
    return 0;
}

return ds_grid_get(room_grid, x_in, y_in);
