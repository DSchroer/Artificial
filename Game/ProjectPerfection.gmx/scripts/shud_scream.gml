///shud_scream()

speed = 15 * speed_mod;

if(sm_ticks() > 5)
{
    for(var i = -2; i <= 2; i++)
    {
        attack_gun_ext(scream, x, y, direction + (i * 10), 0, self, false, false, false, true);
        shud_stop_other_audio(snd_shuude_echolocate);
    }
    
    sfx_play_volume(snd_shuude_echolocate, false, 0.8);
    sm_set_state("turn");
}

attack_gun(mele, x, y, 0, self, false, false);
