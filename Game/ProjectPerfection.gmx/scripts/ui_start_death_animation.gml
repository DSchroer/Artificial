///ui_start_death_animation(time)
var time = argument0;
death_animation_time = time;
death_animation_time_max = time;
death_fog_aspect_ratio = display_get_gui_width() / display_get_gui_height();
if(death_fog == -1)
{
    surface_free(death_fog);
}
death_fog = surface_create(death_fog_texture_size, death_fog_texture_size / death_fog_aspect_ratio);


