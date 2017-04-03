///enemy_navmesh_path(xstart, ystart, xend, yend)

var xst = argument0;
var yst = argument1;
var closest = enemy_navmesh_closest(xst, yst);
xst = closest[0];
yst = closest[1];

var xend = argument2;
var yend = argument3;
closest = enemy_navmesh_closest(xend, yend);
xend = closest[0];
yend = closest[1];

var navmesh = enemy_navmesh_get();

var retpath = -1;
with(navmesh)
{
    var path = path_add();
    if(mp_grid_path(nav, path, xst, yst, xend, yend, true))
    {
        retpath = path;
    }else{
        path_delete(path);
    }
}
return retpath;
