///cgrid_force()
if(!instance_exists(obj_cgrid))
{
    var inst = instance_create(0,0, obj_cgrid);
    with(obj_cgrid)
    {
        cgrid_load_collisions();
    }
}
