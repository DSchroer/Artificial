
speed = 0;
if(sm_ticks() == 0)
{
    sm_set_var("health", current_health);
    sfx_play_volume(snd_heart_icreatedyou, false, 1.0);
}else if(sm_ticks() > 120)
{
    if(sm_ticks() > 120 && (current_health / max_health) > 0.05)
    {
        enemy_attack(obj_player, kill);
        audio_stop_sound(snd_heart_icreatedyou);
        sfx_play_volume(snd_heart_icreatedyou_explosion, false, 1.0);
    }else if(sm_ticks() > 240)
    {
        enemy_attack(obj_player, kill);
        audio_stop_sound(snd_heart_icreatedyou);
        sfx_play_volume(snd_heart_icreatedyou_explosion, false, 1.0);
    }
}else if(sm_get_var("health") - current_health > 50)
{
    if((current_health / max_health) > 0.05)
    {
        audio_stop_sound(snd_heart_icreatedyou);
        audio_stop_sound(snd_heart_icreatedyou_explosion);
        sm_set_state(sm_state_pop());
    }
}
