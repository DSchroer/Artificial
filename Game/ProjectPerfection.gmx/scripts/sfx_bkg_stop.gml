///sfx_bkg_stop()
with(instance_find(obj_sound, 0))
{
    if(current_background_id != -1)
    {
        audio_stop_sound(current_background_id);
    }
    ds_queue_clear(bkg_queue);
    current_background_id = -1;
}

