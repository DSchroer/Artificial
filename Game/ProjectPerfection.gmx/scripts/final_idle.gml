if(sm_ticks() > 120)
{
    sm_set_state("spawn");
}

if(current_health / max_health < 0.7)
{
    sm_set_state("move");
}
