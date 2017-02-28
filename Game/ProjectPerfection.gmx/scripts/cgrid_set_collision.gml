///cgrid_set_collision(val)
var val = argument0;
if(instance_exists(obj_cgrid))
{
    var inst = instance_find(obj_cgrid, 0);
    var grid = inst.cgrid;
    var size = inst.cgrid_size;
    ds_grid_set_region(grid, x / size, y / size, (x / size) + 1, (y / size) + 1, val);
}


