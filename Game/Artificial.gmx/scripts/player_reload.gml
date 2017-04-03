///player_reload(weapon)
var weapon = argument0;

if(is_array(weapon))
{
    if(weapon[weapon_index.remaining] != weapon[weapon_index.capacity])
    {
        weapon[weapon_index.remaining] = weapon[weapon_index.capacity];
        weapon[weapon_index.reload_cooldown] = weapon[weapon_index.reload_timeout];
        
        var j = audio_sound_length(snd_reload2);
        var k = weapon[weapon_index.reload_timeout];
        var l = audio_sound_length(snd_reload3);
        
        if(weapon[weapon_index.reload_timeout] < audio_sound_length(snd_reload7) * 60)
        {
           sfx_play_volume(snd_reload6, false, 0.75);
        }
        else if(weapon[weapon_index.reload_timeout] < audio_sound_length(snd_reload2) * 60)
        {
           sfx_play_volume(snd_reload7, false, 0.75);
        }
        else if(weapon[weapon_index.reload_timeout] < audio_sound_length(snd_reload3) * 60)
        {
           sfx_play_volume(snd_reload2, false, 0.75);
        }
        else 
        {
           sfx_play_volume(snd_reload3, false, 0.75);
        }
    }
}

return weapon;

