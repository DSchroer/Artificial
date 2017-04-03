///level_stub_h()
var px = level_position_x(x);
var py = level_position_y(y);

var hVal;
var grid;

if(instance_number(obj_level) == 0)
{
    return room_height/64;
}else{
    with(obj_level)
    {
        grid = room_grid;
        hVal = ds_list_find_value(room_h_list, ds_grid_get(room_grid, px, py) - 1);
    }
    
    return hVal;
}
