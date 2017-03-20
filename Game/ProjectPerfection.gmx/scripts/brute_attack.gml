///brute_attack()
speed = 0;

if(sm_ticks() > 10)
{
    enemy_attack(obj_player, weapon);
    sm_set_state("approach");
    sfx_play_volume(snd_brute_throw, true, 1.3);    
}
