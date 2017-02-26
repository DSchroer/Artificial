///sfx_stop()


with(instance_find(obj_sound, 0))
{
    for(var i = 0; i < ds_list_size(sfx_playing); i++)
    {
        audio_stop_sound(ds_list_find_value(sfx_playing, i));
    }
    ds_list_clear(sfx_playing);
    ds_list_clear(sfx_volume_mods);
}


