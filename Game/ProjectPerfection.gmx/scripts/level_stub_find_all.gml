///level_stub_find_all(obj)
var target = argument0;

var px = level_position_x(x);
var py = level_position_y(y);

var room_index;
var grid;

with(obj_level)
{
    grid = room_grid;
    room_index = ds_grid_get(room_grid, px, py);
}

var t;
t[0] = noone;

var p = 0;
for(var i = 0; i < instance_number(target); i++)
{
    var inst = instance_find(target, i);
    if(ds_grid_get(grid, level_position_x(inst.x), level_position_y(inst.y)) == room_index)
    {
        t[p++] = inst;
    }
}

return t;

