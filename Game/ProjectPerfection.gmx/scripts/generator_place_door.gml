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

if(ds_grid_get_min(room_grid, x1 - 1, y1 - 1, x2 + 1, y2 + 1) > 0)
{
    var f;
    f[0] = 0;
    f[1] = 0;
    for(var i = x1 - 1; i < x2 + 1; i++)
    {
        for(var j = y1 -1; j < y2 + 1; j++)
        {
            var val = ds_grid_get(room_grid, i, j);
            if(f[0] == 0 || f[0] == val)
            {
                f[0] = val;
            }else if(f[1] == 0 || f[1] == val)
            {
                f[1] = val;
            }else{
                return 0;
            }
        }
    }    

    ds_grid_set_region(door_grid, x1, y1, x2, y2, 1)
}
