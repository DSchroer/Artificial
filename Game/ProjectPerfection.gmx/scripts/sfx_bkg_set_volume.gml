///sfx_bkg_set_volume(volume)
var vol = argument0;
if(current_background_id != -1)
{
    audio_sound_gain(current_background_id, vol, 0);
}

