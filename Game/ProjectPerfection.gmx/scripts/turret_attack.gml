///turret_attack()

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
    var time = weapon[weapon_index.bullet_speed];
    attack_gun_ext(weapon, x, y - 32, enemy_target(obj_player, time), 80, self, true, false, false, false);
    sfx_play_volume(snd_thwander_turret_shot, false, 0.6);
}
