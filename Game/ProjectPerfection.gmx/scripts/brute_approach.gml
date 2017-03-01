///brute_approach()

if(!level_stub_find(obj_player))
{
    enemy_navmesh_clear();
    sm_set_state("idle");
    exit;
}

if(sm_ticks() > 120 && enemy_line_of_sight(45))
{
    enemy_navmesh_clear();
    sm_set_state("attack");
    exit;
}


enemy_navmesh_move(obj_player, 2, 60);
