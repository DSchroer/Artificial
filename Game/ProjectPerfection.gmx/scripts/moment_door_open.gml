///moment_door_open()

with(obj_final_door)
{    
    is_closed = false;
    // Kill walls and open
    for(var i = 0; i <= 4; i++)
    {
        with(walls[i])
        {
            instance_destroy();
        }
    }
    animation_state = 1;
    animation_timer = animation_max;
}
