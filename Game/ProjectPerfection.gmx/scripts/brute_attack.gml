///brute_attack()
speed = 0;

if(sm_ticks() > 10)
{
    enemy_attack_pos(obj_player, weapon, x, y - 64);
    sm_set_state("approach");
    sfx_play_volume(snd_brute_throw, true, 1.3);    
}
