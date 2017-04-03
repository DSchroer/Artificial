///level_stub_w()
var px = level_position_x(x);
var py = level_position_y(y);

var wVal;
var grid;

if(instance_number(obj_level) == 0)
{
    return room_width / 64;
}else{
    with(obj_level)
    {
        grid = room_grid;
        wVal = ds_list_find_value(room_w_list, ds_grid_get(room_grid, px, py) - 1);
    }
    
    return wVal;
}
