///sfx_bkg_clear()
with(obj_player)
{
    if(current_sound_id != -1)
    {
        audio_stop_sound(current_sound_id);
    }
    ds_queue_clear(bkg_queue);
    current_sound_id = -1;
}

