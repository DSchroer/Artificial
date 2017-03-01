///cap_mele()

if(!enemy_line_of_sight(45) || point_distance(x, y, obj_player.x, obj_player.y) > 150)
{
    sm_set_state("approach");
}

speed = 0;
if(sm_ticks() % 10 == 0)
{
    attack_gun(sword, x, y, enemy_dumb(enemy_target(obj_player, 20), 5), self);
}
