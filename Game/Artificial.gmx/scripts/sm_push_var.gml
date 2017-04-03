///sm_push_var(name);
if(sm_has_var(argument0))
{
    ds_stack_push(sm_var_stack, sm_get_var(argument0));
}
