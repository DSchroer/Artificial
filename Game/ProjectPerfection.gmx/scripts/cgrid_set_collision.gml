///cgrid_set_collision(val)
var val = argument0;
if(instance_exists(obj_cgrid))
{
    var inst = instance_find(obj_cgrid, 0);
    var grid = inst.cgrid;
    var size = inst.cgrid_size;
    var hsteps = 2 * (image_xscale - 1);
    var vsteps = 2 * (image_yscale - 1);
    
    ds_grid_set_region(grid, x / size, y / size, (x / size) + 1 + hsteps, (y / size) + 1 + vsteps, val);
}


