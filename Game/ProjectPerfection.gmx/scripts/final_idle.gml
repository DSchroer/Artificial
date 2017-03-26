if(sm_ticks() > 120)
{
    sm_set_state("lazer");
}

if(current_health / max_health < 0.7)
{
    sm_set_state("move");
}
