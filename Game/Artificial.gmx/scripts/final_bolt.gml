
speed = 0;
if(sm_ticks() > 15)
{
    sm_set_state(sm_state_pop());
}else if(sm_ticks() % 5 == 0)
{
    var time = bolt[weapon_index.bullet_speed];
    attack_gun(bolt, x, y - (sprite_height/2), enemy_target(obj_player, time), self, false, false);
    sfx_play_volume(snd_heart_basic, false, 1.0);
}
