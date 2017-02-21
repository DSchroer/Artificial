///level_stub_find_all_ds(obj)
var target = argument0;

var px = level_position_x(x);
var py = level_position_y(y);

var room_index;
var grid;

if(!instance_exists(obj_level))
{
    var t = ds_list_create();
    for(var i = 0; i < instance_number(target); i++)
    {
        ds_list_add(t, instance_find(target, i));
    }
    return t;
}

with(obj_level)
{
    grid = room_grid;
    room_index = ds_grid_get(room_grid, px, py);
}

var t = ds_list_create();

for(var i = 0; i < instance_number(target); i++)
{
    var inst = instance_find(target, i);
    if(ds_grid_get(grid, level_position_x(inst.x), level_position_y(inst.y)) == room_index)
    {
        ds_list_add(t, inst);
    }
}

return t;

