///eg_idle()
if(!sm_has_var(0))
{
    sm_set_var(0, 0);
}

if(level_stub_find(obj_player))
{
    sm_set_var(0, sm_get_var(0) + 1);
    if(sm_get_var(0) > 30)
    {
        sm_set_state("approach");
    }
}

speed = 0;
