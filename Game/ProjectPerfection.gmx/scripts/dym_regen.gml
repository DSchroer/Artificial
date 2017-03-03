///dym_regen()
speed = 0;
if(sm_ticks() == 0)
{
    for(var i = 0; i < 7; i++)
    {
        var inst = instance_create(x, y, obj_dym_part);
        inst.image_xscale = 2;
        inst.image_yscale = 2;
        var angle = ((360 / 7) * i) + rock_angle;
        inst.x = x + lengthdir_x(1500, angle);
        inst.y = y - 64 + lengthdir_y(1500, angle);
    }
}

var furthest = instance_furthest(x, y, obj_dym_part);
debug_show_string("Dist: " + string(point_distance(x, y - 64, furthest.x, furthest.y)));
if(point_distance(x, y - 64, furthest.x, furthest.y) < 200)
{
    sm_set_state("idle");
}
