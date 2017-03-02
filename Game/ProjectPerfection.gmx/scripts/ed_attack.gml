///ed_attack()

if(point_distance(x, y, obj_player.x, obj_player.y) > 100)
{
    sm_set_state("approach");
}

if(sm_ticks() % 120 == 0)
{
    direction = random(360);
    speed = 1.5;
}

if(sm_ticks() % 50 == 5)
{
    enemy_attack(obj_player, weapon);
}
