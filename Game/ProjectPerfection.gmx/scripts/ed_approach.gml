///ed_approach()
if(!level_stub_find(obj_player))
{
    sm_set_state("idle");
    exit;
}

if(point_distance(x, y, obj_player.x, obj_player.y) < 75)
{
    enemy_navmesh_clear();
    sm_set_state("attack");
    exit;
}

enemy_navmesh_move(obj_player, 5, 30);
