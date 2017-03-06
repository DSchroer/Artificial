///sfx_bkg_clear()
with(obj_sound)
{
    if(current_background_id != -1)
    {
        audio_stop_sound(current_background_id);
    }
    ds_queue_clear(bkg_queue);
    current_background_id = -1;
}

