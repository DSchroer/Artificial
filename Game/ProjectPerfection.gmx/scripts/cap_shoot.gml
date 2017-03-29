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
    entity_use_animation(spr_captain_attack, true);
    enemy_attack_pos(obj_player, weapon, x, y - 48);
    sfx_play_volume(snd_captain_attack, true, 0.2);
}
