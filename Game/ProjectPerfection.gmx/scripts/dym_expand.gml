///dym_expand()
speed = 0;
if(sm_ticks() == 0)
{
    rock_dist *= 2;
    sfx_play_volume(snd_dym_cloudslash, false, 1.0);
}

with(obj_dym_part)
{
    mv_mod = 1.5;
}

rock_angle = (rock_angle + 3) % 360;
enemy_navmesh_move(obj_player, 5, 60);

if(sm_ticks() == 240)
{
    rock_dist /= 2;
    sm_set_state("idle");
}
