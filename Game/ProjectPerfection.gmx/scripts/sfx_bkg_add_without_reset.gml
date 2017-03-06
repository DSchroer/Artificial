///sfx_bkg_add_without_reset(music)

var music = argument0;

with(instance_find(obj_sound, 0))
{
    if(current_background_id == -1 || !audio_is_playing(music))
    {
        sfx_bkg_stop();   
    }
    ds_queue_enqueue(bkg_queue, music);   
}




