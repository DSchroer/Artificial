///sm_init(current_state)
sm_current_state = argument0;
sm_timer = 0;
sm_variables = ds_map_create();
sm_next = argument0;
sm_stack = ds_stack_create();
ds_stack_push(sm_stack, argument0);
sm_var_stack = ds_stack_create();
sm_no_push = false;
