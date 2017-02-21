///level_stub_x()
var px = level_position_x(x);
var py = level_position_y(y);

var xVal;
var grid;

if(instance_number(obj_level) == 0)
{
    return 0;
}else{
    with(obj_level)
    {
        grid = room_grid;
        xVal = ds_list_find_value(room_x_list, ds_grid_get(room_grid, px, py) - 1);
    }
    
    return xVal;
}

