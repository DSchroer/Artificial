///cgrid_collision_point(x,y)
cgrid_force();
with(obj_cgrid)
{
    var inst = ds_grid_get(cgrid, argument0 / cgrid_size, argument1 / cgrid_size);
    return inst != 0 && !is_undefined(inst) && collision_point(argument0, argument1, inst, false, false);
}
