///sm_init(current_state)
sm_current_state = argument0;
sm_timer = 0;
sm_variables = -1;
sm_next = argument0;
sm_stack = ds_stack_create();
ds_stack_push(sm_stack, argument0);
