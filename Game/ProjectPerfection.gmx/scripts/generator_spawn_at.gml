///generator_spawn_at(key, room, object)
var key = argument0;
if(is_undefined(key))
{
    exit;
}
var new_room = argument1;
var obj = argument2;

var req = obj_level;
if(instance_exists(obj_generator))
{
    req = obj_generator;
}

with(req)
{
    var rx = ds_list_find_value(room_x_list, key);
    var ry = ds_list_find_value(room_y_list, key);
    var rw = ds_list_find_value(room_w_list, key);
    var rh = ds_list_find_value(room_h_list, key);
    
    if(!instance_exists(obj_generator))
    {
        var inst = instance_create((rx + (rw/2) - 1) * 64, (ry + (rh/2) - 1) * 64, obj);
        with(inst)
        {
            var point = level_get_spawn_point();
            if(point != noone)
            {
                x = point.x;
                y = point.y;
                with(point)
                {
                    instance_destroy();
                }
            }
        }
    }else{
        room_instance_add(new_room, (rx + (rw/2) - 1) * 64, (ry + (rh/2) - 1) * 64, obj);
    }
}
