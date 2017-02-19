///sfx_bkg_update()

with(obj_player)
{
    if(ds_queue_size(bkg_queue) != 0)
    {
        if(current_sound_id == -1 || !audio_is_playing(current_sound_id))
        {
            var current = ds_queue_dequeue(bkg_queue);
            var num = audio_play_sound(current, 1, false);
            audio_sound_gain(num, clamp(save_get_value(obj_game_save, "music_volume", 1) * 0.5, 0, 1), 0);
            current_sound_id = num;
            ds_queue_enqueue(bkg_queue, current);        
        }
    }
    else 
    {
        current_sound_id = -1;
    }
}

