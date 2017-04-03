///twan_mine()

entity_use_animation(spr_thwan_mine, true);

if(sm_ticks() > 60)
{
    var ran = random(4);
    if(ran < 2)
    {
        instance_create(x - 32, y - 32, obj_mine_trap);
    }else if(ran < 3){
        instance_create(x - 32, y - 32, obj_snare_trap);
    }else{
        if(instance_number(obj_twan_turret) < 3)
        {
            instance_create(x - 32, y - 32, obj_twan_turret);
        }
    }
    sm_set_state("relocate");
    sfx_play_volume(snd_thwander_launch_mine, false, 0.8);
}
