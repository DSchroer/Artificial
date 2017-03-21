///dym_grab()
speed = 0;
if(sm_ticks() == 0)
{
    rock_dist *= 3;
    rock_angle = point_direction(x, y, obj_player.x, obj_player.y) + 25;
    rock_x = obj_player.x - x;
    rock_y = obj_player.y - y;
    sfx_play_volume(snd_dym_grab, false, 1.0);

}

if(sm_ticks() == 120)
{
    rock_angle = (rock_angle + 180) % 360;
}

if(sm_ticks() == 240)
{
    rock_x = 0;
    rock_y = 0;
    rock_dist /= 3;
    sm_set_state("idle");
}
