///moment_door_close()

with(obj_final_door)
{    
    animation_state = 2;
    animation_timer = animation_max;
    
    is_closed = true;
    moment_door_build_walls();
}
