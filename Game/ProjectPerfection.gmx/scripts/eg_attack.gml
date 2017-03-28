///eg_attack()

if(point_distance(x, y, obj_player.x, obj_player.y) > 576 || !enemy_line_of_sight(45))
{
    sm_set_state("approach");
}

if(point_distance(x, y, obj_player.x, obj_player.y) < 200)
{
    sm_set_state("retreat");
}

if(sm_ticks() % 120 == 0)
{
    direction = random(360);
    speed = 1.5;
}

if(sm_ticks() % 60 == 30)
{
    enemy_attack_pos(obj_player, weapon, x, y - 32);
    sfx_play_volume(snd_grunt_attack, true, 0.20);
}
