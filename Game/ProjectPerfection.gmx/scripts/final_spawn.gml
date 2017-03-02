
if(sm_ticks() == 0 && instance_number(obj_clone) == 0)
{
    var spawners = level_stub_find_all(obj_spawn);
    for(var i = 0; i < array_length_1d(spawners); i++)
    {
        var s = spawners[i];
        instance_create(s.x, s.y, obj_clone);
    }
}else if(sm_ticks() > 30)
{
    sm_state_force_push("idle");
    sm_set_state("lazer");
}
