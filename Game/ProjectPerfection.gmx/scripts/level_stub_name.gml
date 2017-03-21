///level_stub_name()
var px = level_position_x(x);
var py = level_position_y(y);

var room_index;
var grid;
var list;

if(instance_number(obj_level) == 0)
{
    return room_get_name(room);
}else{
    with(obj_level)
    {
        grid = room_grid;
        list = room_list;
        room_index = ds_grid_get(room_grid, px, py);
    }
    
    var idx = ds_grid_get(grid, level_position_x(x), level_position_y(y));
    if(idx == 0)
    {
        return "";
    }
    
    var rm = ds_list_find_value(list, idx - 1);
    if(room_exists(rm))
    {
        return room_get_name(rm);
    }else{
        return "";
    }
}



