///eg_attack()

if(point_distance(x, y, obj_player.x, obj_player.y) > 576)
{
    sm_set_state("approach");
}

if(point_distance(x, y, obj_player.x, obj_player.y) < 200)
{
    sm_set_state("retreat");
}

speed = 0;

if(sm_ticks() % 60 == 30 || sm_ticks() % 60 == 35 || sm_ticks() % 60 == 40)
{
    attack_gun(weapon, x, y, enemy_dumb(enemy_target(obj_player, 20), 60), self);
}
