///sm_pre_update()
if(sm_current_state != sm_next)
{
    ds_stack_push(sm_stack, sm_current_state);
    sm_current_state = sm_next;
    ds_map_destroy(sm_variables);
    sm_variables = ds_map_create();
    sm_timer = 0;
}else{
    sm_timer += 1;
}
