///level_path_in_stub(path, stub)

var path = argument0;
var key = argument1;
if(is_undefined(key))
{
    return false;
}

with(obj_level)
{
    var rx = ds_list_find_value(room_x_list, key);
    var ry = ds_list_find_value(room_y_list, key);
    var rw = ds_list_find_value(room_w_list, key);
    var rh = ds_list_find_value(room_h_list, key);
    
    for(var i = 0; i < path_get_number(path); i++)
    {
        var px = path_get_point_x(path, i);
        var py = path_get_point_y(path, i);
        
        if(point_in_rectangle(px, py, rx * 64, ry * 64, (rx + rw) * 64, (ry + rh) * 64))
        {
            return true;
        }
    }
}

return false;
