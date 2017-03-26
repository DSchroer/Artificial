///shud_turn()

speed = 10 * speed_mod;
var t_dir = -point_direction(x, y, obj_player.x, obj_player.y);
if(angle_difference(direction, t_dir) > 0)
{
    direction -= 1;
}else if(angle_difference(direction, t_dir) < 0)
{
    direction += 1;
}

if(sm_ticks() > 60)
{
    sm_set_state("retreat");
}
