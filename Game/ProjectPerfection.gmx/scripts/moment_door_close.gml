///moment_door_close()

with(obj_final_door)
{    
    animation_state = 2;
    animation_timer = animation_max;
    
    is_closed = true;
    var yp = y + sprite_get_height(spr_door_background) - 64 - 6;
    for(var i = 0; i <= 4; i++)
    {
        walls[i] = instance_create(x + i * 64, yp, obj_invisible_wall);        
    }
}
