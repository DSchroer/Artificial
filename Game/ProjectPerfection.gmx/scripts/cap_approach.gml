///cap_approach()

if(!level_stub_find(obj_player))
{
    enemy_navmesh_clear();
    sm_set_state("idle");
    exit;
}

if(point_distance(x, y, obj_player.x, obj_player.y) < 100)
{
    enemy_navmesh_clear();
    sm_set_state("mele");
}

if(enemy_line_of_sight(45))
{
    if(!sm_has_var("tmr"))
    {
        sm_set_var("tmr", 0);
    }
    sm_set_var("tmr", sm_get_var("tmr") + 1);
    
    if(sm_get_var("tmr") > 10)
    {
        enemy_navmesh_clear();
        sm_set_state("shoot");
        exit;
    }
}else{
    sm_set_var("tmr", 0);
}

enemy_navmesh_move(obj_player, 5, 60);
