///moment_door_build_walls();
with(obj_final_door)
{
    var yp = y + sprite_get_height(spr_door_background) - 64;
    for(var i = 0; i <= 4; i++)
    {
        walls[i] = instance_create(x + i * 64, yp, obj_invisible_wall);        
    }
    has_walls = true;
}


