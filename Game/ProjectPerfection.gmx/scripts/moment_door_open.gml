///moment_door_open()

with(obj_final_door)
{    
    is_closed = false;
    animation_state = 1;
    animation_timer = animation_max;
    alarm[2] = animation_max;
    sfx_play_volume(snd_moment_door_open, false, 1.5);
}
