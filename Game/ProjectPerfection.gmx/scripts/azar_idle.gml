
if(sprite_index != spr_azar_idle)
{
    sprite_index = spr_azar_idle;
}

var timer = 120;
if(current_health / max_health < 0.5)
{
    timer = 60;
    if(stage == 1 && area_contains(obj_azar_area, obj_player))
    {
        with(obj_azar_wall)
        {
            instance_create(x, y, obj_wall);
            instance_destroy();
        }
        stage = 2;
    }
}

if(sm_ticks() > timer)
{
    enemy_navmesh_clear();
    if(random(3) < 1)
    {
        sm_set_state("move");
    }else{
        sm_set_state("attack");
    }
}

enemy_navmesh_move(obj_player, 1, 60);
