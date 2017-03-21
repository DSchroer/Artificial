///twan_mine()
if(sm_ticks() > 60)
{
    var ran = random(4);
    if(ran < 2)
    {
        instance_create(x, y, obj_twan_mine);
    }else if(ran < 3){
        instance_create(x, y, obj_snare_trap);
    }else{
        instance_create(x, y, obj_twan_turret);
    }
    sm_set_state("idle");
    sfx_play_volume(snd_thwander_launch_mine, false, 0.8);
}
