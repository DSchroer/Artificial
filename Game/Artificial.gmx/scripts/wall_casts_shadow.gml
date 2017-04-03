///wall_casts_shadow()

var cr = ds_grid_get(obj_level.room_grid, x / 64, y / 64);

var bottom = collision_point(x, y+64, obj_wall, false, false);
var bcr = ds_grid_get(obj_level.room_grid, x / 64, (y + 64) / 64);

var second = collision_point(x, y+128, obj_wall, false, false);
var scr = ds_grid_get(obj_level.room_grid, x / 64, (y + 128) / 64);
if(bottom && bottom.object_index != obj_door && second && second.object_index != obj_door)
{
    return true;
}

if(cr != bcr || cr != scr)
{
    return true;
}   

return false;
