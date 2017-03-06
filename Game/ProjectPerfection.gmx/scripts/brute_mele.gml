///brute_mele()
speed = 0;

if(sm_ticks() > 60)
{
    if(random(2) < 1)
    {
        enemy_attack(obj_player, sword);
    }else{
        enemy_attack(obj_player, pound);
    }
    
    sm_set_state("approach");
}
