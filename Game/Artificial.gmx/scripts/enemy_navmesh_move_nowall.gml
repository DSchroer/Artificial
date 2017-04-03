///enemy_navmesh_move_nowall(destination, speed, interval)
var dest = argument0;
var spd = argument1;
var interval = argument2;

var path = -1;
var path_i = 0;
if(sm_has_var("path"))
{
    path = sm_get_var("path");
    path_i = sm_get_var("path_index");
}

if(sm_ticks() % interval == 0)
{
    enemy_navmesh_clear();
    
    path = sm_set_var("path", enemy_navmesh_path(x, y, dest.x, dest.y));
    path_i = sm_set_var("path_index", 0);
}

if(path != -1)
{
    var px = path_get_point_x(path, path_i);
    var py = path_get_point_y(path, path_i);
    
    if(collision_point(px, py, self, false, false))
    {
        path_i = sm_set_var("path_index", path_i + 1);
        px = path_get_point_x(path, path_i);
        py = path_get_point_y(path, path_i);
    }
    
    direction = point_direction(x, y, px, py);
    speed = spd;
}
