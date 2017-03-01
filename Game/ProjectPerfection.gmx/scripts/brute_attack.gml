///brute_attack()
speed = 0;

if(sm_ticks() > 10)
{
    attack_gun(weapon, x, y, enemy_dumb(enemy_target(obj_player, 20), 10), self);
    sm_set_state("approach");
}
