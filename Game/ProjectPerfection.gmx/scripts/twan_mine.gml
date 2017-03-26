///twan_mine()
if(sm_ticks() > 60)
{
    var ran = random(4);
    if(ran < 2)
    {
        instance_create(x, y, obj_mine_trap);
    }else if(ran < 3){
        instance_create(x, y, obj_snare_trap);
    }else{
        if(instance_number(obj_twan_turret) < 3)
        {
            instance_create(x, y, obj_twan_turret);
        }
    }
    sm_set_state("relocate");
    sfx_play_volume(snd_thwander_launch_mine, false, 0.8);
}
