///sfx_play_volume(effect, allow_duplicate, volume_modifier)

var effect = argument0;
var allow_duplicate = argument1;
var volume_modifier = argument2;
if(allow_duplicate || !audio_is_playing(effect))
{
    var num = audio_play_sound(effect, 2, false);
    var vol = save_get_value(obj_game_save, "fx_volume", 1);
    audio_sound_gain(num, clamp(vol * volume_modifier, 0, 1), 0);
}





