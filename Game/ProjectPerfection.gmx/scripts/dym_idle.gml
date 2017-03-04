///dym_idle()

if(instance_number(obj_dym_part) == 0)
{
    enemy_navmesh_clear();
    sm_set_state("regen");
    exit;
}

if(sm_ticks() > 240)
{
    var a = random(5);
    if(a < 1)
    {
        sm_set_state("shoot");
    }else if(a < 2)
    {
        sm_set_state("explode");
    }else if(a < 3)
    {
        sm_set_state("expand");
    }else if(a < 4)
    {
        sm_set_state("grab");
    }else
    {
        sm_set_state("port");
    }
}

rock_angle = (rock_angle + 3) % 360;

var sp = 3;
with(obj_dym_part)
{
    mv_mod = 1;
}
if(current_health / max_health < 0.5)
{
    sp = 5;
    with(obj_dym_part)
    {
        mv_mod = 1.5;
    }
}
enemy_navmesh_move(obj_player, sp, 60);
