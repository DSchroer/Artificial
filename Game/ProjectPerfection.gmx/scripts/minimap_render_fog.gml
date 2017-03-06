///minimap_render_fog()
if(level != -1)
{   
    if(!surface_exists(fog_surface))
    {
        fog_surface = surface_create(level.width * map_size, level.height * map_size);
        surface_set_target(fog_surface);
        draw_clear(c_black);
    }else{
        surface_set_target(fog_surface);
    }
    
    for(var i = 0; i < ds_list_size(level.room_list); i++)
    {
        var fog = ds_list_find_value(fog_list, i);
        if(fog == 0)
        {
        
        }
    }
    
    surface_reset_target();
}
