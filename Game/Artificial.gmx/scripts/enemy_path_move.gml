///enemy_path_move(path, speed)
var path = argument0;
var spd = argument1;

var path_i = 0;
if(sm_has_var("path_index"))
{
    path_i = sm_get_var("path_index");
}

var px = path_get_point_x(path, path_i);
var py = path_get_point_y(path, path_i);

if(collision_point(px, py, self, false, false))
{
    path_i = sm_set_var("path_index", path_i + 1);
    if(path_i >= path_get_number(path))
    {
        path_i = sm_set_var("path_index", 0);
    }
    
    px = path_get_point_x(path, path_i);
    py = path_get_point_y(path, path_i);
}

direction = point_direction(x, y, px, py);
speed = spd;

