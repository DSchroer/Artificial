///sfx_bkg_update()


if(ds_queue_size(bkg_queue) != 0)
{
    if(current_background_id == -1 || !audio_is_playing(current_background_id))
    {
        var current = ds_queue_dequeue(bkg_queue);
        var num = audio_play_sound(current, 1, false);
        var volume = clamp(save_get_value(obj_game_save, "music_volume", 1) * 0.5, 0, 1);
        audio_sound_gain(num, volume, 0);
        current_background_id = num;
        ds_queue_enqueue(bkg_queue, current);        
    }
}
else 
{
    current_background_id = -1;
}


