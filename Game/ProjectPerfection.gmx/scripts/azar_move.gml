
if(sm_ticks() == 0)
{
    var inst = noone;
    do{
        var points = level_stub_find_all(obj_move_point);
        var i = random(array_length_1d(points));
        inst = points[i];
    }until(area_contains(obj_azar_area, inst));
    
    sm_set_var("inst", inst);
    visible = false;
    
    for(var i = 0; i < 15; i++)
    {
        var r = instance_create(x, y, obj_azar_rock);
        r.target = inst;
        r.floor_x = x + random(256) - 128;
        r.floor_y = y + random(256) - 128;
    }
}else{
    if(instance_number(obj_azar_rock) < 5)
    {
        var target = sm_get_var("inst");
        x = target.x;
        y = target.y;
        visible = true;
        sm_set_state("idle");
    }
}



