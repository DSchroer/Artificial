///enemy_navmesh_closest(x, y);
var xp = argument0;
var yp = argument1;

var closest;
closest[0] = xp;
closest[1] = yp;

var navmesh = enemy_navmesh_get();

var retpath = -1;
with(navmesh)
{
    if(mp_grid_get_cell(nav, (closest[0] - nav_x) / 32, (closest[1] - nav_y) / 32) == 0)
    {
        return closest;
    }
    
    for(var i = -1; i < 2; i++)
    {
        for(var j = -1; j < 2; j++)
        {
            closest[0] = xp + (i * 32);
            closest[1] = yp + (j * 32);
            if(mp_grid_get_cell(nav, (closest[0] - nav_x) / 32, (closest[1] - nav_y) / 32) == 0)
            {
                return closest;
            }
        }
    }
}
closest[0] = xp;
closest[1] = yp;

return closest;
