///sfx_play_gun(effect, allow_duplicate, volume_modifier)

var effect = argument0;
var allow_duplicate = argument1;
var volume_modifier = argument2 * 1;
if(allow_duplicate || !audio_is_playing(effect))
{
    var num = audio_play_sound(effect, 2, false);
    var vol = 0;
    with(obj_game_save)
    {
        vol = save_get_value(self, "fx_volume", 1);
    }
    vol = clamp(vol * volume_modifier, 0, 1);
    audio_sound_gain(num, vol, 0);
    
    var rng = random_range(-0.08, 0.08);
    audio_sound_pitch(num, (1 + rng));
    with(instance_find(obj_sound, 0))
    {
        ds_list_add(sfx_volume_mods, vol);
        ds_list_add(sfx_playing, num);
    }
}





