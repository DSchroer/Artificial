///sm_state_pop()
if(sm_next != sm_current_state)
{
    return sm_next;
}
var pop = ds_stack_pop(sm_stack);
return pop;
