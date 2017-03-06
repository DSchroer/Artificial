///sfx_normal_update()


for(var i = ds_list_size(sfx_playing) - 1; i >= 0; i--)
{
    var sound_id = ds_list_find_value(sfx_playing, i);
    if(!audio_is_playing(sound_id))
    {
        ds_list_delete(sfx_playing, i);
        ds_list_delete(sfx_volume_mods, i);
    }
}



