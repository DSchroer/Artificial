///shud_sweat()

speed = 15;

if(sm_ticks() % 15 == 0)
{
    with(obj_shuud_body)
    {
        attack_gun_ext(other.sweat, x, y, direction + 90, sprite_width / 2, self, false, false, false, false);
        attack_gun_ext(other.sweat, x, y, direction - 90, sprite_width / 2, self, false, false, false, false);
    }
    
    sfx_play_volume(snd_shuude_echolocate, false, 0.8);
}

if(sm_ticks() > 30 * 5)
{
    sm_set_state("turn");
}
