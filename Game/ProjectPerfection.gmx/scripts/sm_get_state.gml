///sm_get_state()

if(is_paused())
{
    return "paused";
}

return sm_current_state;
