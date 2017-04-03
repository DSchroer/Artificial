///sm_pop_var(name);
if(!ds_stack_empty(sm_var_stack))
{
    sm_set_var(argument0, ds_stack_pop(sm_var_stack));
}
