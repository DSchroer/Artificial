///twan_fire_shot()

enemy_attack(obj_player, mgun);
sfx_play_volume(snd_thwander_sniper_rifle_shot, true, 0.25);

sm_set_state(sm_state_pop());
