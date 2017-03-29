///sm_pre_update()
if(is_paused())
{
    exit;
}

if(sm_current_state != sm_next)
{
    if(!sm_no_push)
    {
        ds_stack_push(sm_stack, sm_current_state);
    }
    sm_no_push = false;
    sm_current_state = sm_next;
    ds_map_clear(sm_variables);
    sm_timer = 0;
}else{
    sm_timer += 1;
}
