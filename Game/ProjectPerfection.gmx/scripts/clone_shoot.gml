///clone_shoot()

if(!enemy_line_of_sight(45))
{
    sm_set_state("approach");
}

speed = 0;

if(sm_ticks() % 60 > 30 && sm_ticks() % 5 == 0)
{
    gun_recoil += 10 * weapon[weapon_index.recoil_modifier];
    enemy_attack(obj_player, weapon);
}
