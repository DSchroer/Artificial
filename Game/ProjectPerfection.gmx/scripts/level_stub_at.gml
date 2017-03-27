///level_stub_at(x,y);
var px = level_position_x(argument0);
var py = level_position_y(argument1);

if(instance_number(obj_level) == 0)
{
    return 0;
}else{
    with(obj_level)
    {
        return ds_grid_get(room_grid, px, py);
    }
}

