///clone_shoot()

if(!enemy_line_of_sight(45))
{
    sm_set_state("approach");
}

speed = 0;

if(sm_ticks() % 60 > 30 && sm_ticks() % 5 == 0)
{
    gun_recoil += 10 * weapon[weapon_index.recoil_modifier];
    var time = weapon[weapon_index.bullet_speed];
    attack_gun_ext(weapon, x + gun_x, y + gun_y, enemy_target(obj_player, time), 50, self, true);
}
