///sm_pre_update()
if(sm_current_state != sm_next)
{
    sm_current_state = sm_next;
    ds_stack_push(sm_stack, sm_current_state);
    sm_variables = -1;
    sm_timer = 0;
}else{
    sm_timer += 1;
}
