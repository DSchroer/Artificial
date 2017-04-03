///level_stub_y()
var px = level_position_x(x);
var py = level_position_y(y);

var yVal;
var grid;

if(instance_number(obj_level) == 0)
{
    return 0;
}else{
    with(obj_level)
    {
        grid = room_grid;
        yVal = ds_list_find_value(room_y_list, ds_grid_get(room_grid, px, py) - 1);
    }
    
    return yVal;
}
