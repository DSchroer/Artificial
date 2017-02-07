///eg_approach()
if(!level_stub_find(obj_player))
{
    sm_set_state("idle");
}

if(point_distance(x, y, obj_player.x, obj_player.y) < 500)
{
    sm_set_state("attack");
}

direction = point_direction(x, y, obj_player.x, obj_player.y);
speed = 3;
