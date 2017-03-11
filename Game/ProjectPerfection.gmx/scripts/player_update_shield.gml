
if(is_shield_active)
{
    if(shield_penalty_time > 0)
    {
        shield_penalty_time -= (delta_time / 1000000);
        remaining_shield = max(0, remaining_shield);
        shield_is_recharging = false;
        if(audio_is_playing(shield_recharge_sound))
        {
            audio_stop_sound(shield_recharge_sound);
            shield_recharge_sound = -1;
        }
        if(remaining_shield <= 0)
        {
            shield_broken_sound = sfx_play(snd_shield_broken, false);
        }
    }
    else
    {
        var val = shield_max_health * shield_recharge_rate * (delta_time / 1000000);
        remaining_shield += shield_max_health * shield_recharge_rate * (delta_time / 1000000);
        remaining_shield = min(remaining_shield, shield_max_health);
        
        if(!shield_is_recharging)
        {
            shield_recharge_sound = sfx_play(snd_shield_recharge, false);
            if(audio_is_playing(shield_broken_sound))
            {
                shield_broken_sound = -1;
                audio_stop_sound(shield_broken_sound);
            }
        }
        shield_is_recharging = true;
    }
    
    if(remaining_shield > 0)
    {
        
    } 
}
else 
{
    remaining_shield = 0;
    shield_is_recharging = false;
}
