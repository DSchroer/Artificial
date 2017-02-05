///eg_attack()

if(point_distance(x, y, obj_player.x, obj_player.y) > 350)
{
    sm_set_state("approach");
}

if(point_distance(x, y, obj_player.x, obj_player.y) < 100)
{
    sm_set_state("retreat");
}

speed = 0;

if(sm_ticks() % 60 == 30 || sm_ticks() % 60 == 35 || sm_ticks() % 60 == 40)
{
    attack_gun(weapon, x, y, point_direction(x, y, obj_player.x, obj_player.y), self);
}
