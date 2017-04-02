///brute_mele()
speed = 0;

if(sm_ticks() > 60)
{
    entity_use_animation(spr_brute_attack, true);
    if(random(2) < 1)
    {
        enemy_attack(obj_player, sword);
        sfx_play_volume(snd_brute_melee, true, 1.3);    
    }else{
        sfx_play_volume(snd_brute_gp, true, 1.3);    
        enemy_attack(obj_player, pound);
    }
    
    sm_set_state("approach");
}
