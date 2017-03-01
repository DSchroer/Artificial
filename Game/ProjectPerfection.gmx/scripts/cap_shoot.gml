///cap_shoot()

if(!enemy_line_of_sight(45))
{
    sm_set_state("approach");
}

if(point_distance(x, y, obj_player.x, obj_player.y) < 100)
{
    sm_set_state("mele");
}

speed = 0;

if(sm_ticks() % 60 > 30 && sm_ticks() % 5 == 0)
{
    attack_gun(weapon, x, y, enemy_dumb(enemy_target(obj_player, 20), 5), self);
}
