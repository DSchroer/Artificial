///sfx_set_volume(volume)
var vol = argument0;
with(instance_find(obj_sound, 0))
{
    for(var i = 0; i < ds_list_size(sfx_playing); i++)
    {
        audio_sound_gain(ds_list_find_value(sfx_playing, i), vol * ds_list_find_value(sfx_volume_mods, i), 0);
    }
}

