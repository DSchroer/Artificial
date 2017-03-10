///eg_retreat()

if(point_distance(x, y, obj_player.x, obj_player.y) > 250)
{
    sm_set_state("attack");
}

direction = point_direction(x, y, obj_player.x, obj_player.y);
speed = -3;

if(sm_ticks() % 60 == 30 || sm_ticks() % 60 == 35 || sm_ticks() % 60 == 40)
{
    enemy_attack(obj_player, weapon);
}
