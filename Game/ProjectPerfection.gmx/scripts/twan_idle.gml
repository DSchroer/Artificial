///twan_idle()
if(sm_ticks() == 0 && shots == 3)
{
    sm_set_var("action", random(3));
}

if(shots <= 0 || (current_health / max_health) > 0.5)
{
    shots = 3;
    sm_set_state("mine");
}else{
    if(sm_get_var("action") < 1)
    {
        shots = 0;
    }else{
        --shots;
        sm_set_state("fire");
    }
}
