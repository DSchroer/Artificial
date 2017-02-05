///sfx_bkg_update()

var size = ds_list_size(sfx_list);

if(size != 0)
{
    var current = ds_list_find_value(sfx_list, sfx_position);

    if(!audio_is_playing(current))
    {
        var next = (sfx_position + 1) % size;
        audio_play_sound(ds_list_find_value(sfx_list, next), 1, false);
        sfx_position = next;
    }
}

