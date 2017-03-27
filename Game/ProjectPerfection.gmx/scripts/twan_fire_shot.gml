///twan_fire_shot()
if(sm_ticks() == 0)
{
    sm_set_var("rand", round(random(10)));
}

if(sm_ticks() == 30 + sm_get_var("rand"))
{
    enemy_attack_pos(obj_player, sniper, x, y - 64);
    sfx_play_volume(snd_thwander_sniper_rifle_shot, true, 0.25);
}

if(sm_ticks() > 60)
{
    sm_set_state("idle");
}
