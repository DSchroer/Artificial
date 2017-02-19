///interact_any(distance)
var dist = argument0;

var inst = instance_nearest(x, y, obj_interact);
var solid_inst = instance_nearest(x, y, obj_interact_solid);

if(inst == noone)
{
    inst = solid_inst;
}

if(solid_inst != noone)
{
    if(point_distance(x, y, solid_inst.x, solid_inst.y) < point_distance(x, y, inst.x, inst.y))
    {
        inst = solid_inst;
    }
}

if(inst == noone || point_distance(x, y, inst.x, inst.y) > dist)
{
    return noone;
}

return inst;
