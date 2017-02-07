///level_stub_find(obj)
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

var t = noone;
with(target)
{
    if(ds_grid_get(grid, level_position_x(x), level_position_y(y)) == room_index)
    {
        t = self;
    }
}

return t;

