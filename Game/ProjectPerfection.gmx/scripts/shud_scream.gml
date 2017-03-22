///shud_scream()

speed = 15;

if(sm_ticks() > 5)
{
    attack_gun(scream, x, y, direction, self, false, false);
    shud_stop_other_audio(snd_shuude_echolocate);
    sfx_play_volume(snd_shuude_echolocate, false, 0.8);
    sm_set_state("turn");
}
