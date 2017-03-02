///shud_retreat()
speed = 10;

if(sm_ticks() > 100)
{
    sm_set_state("approach");
}else if(sm_ticks() > 60)
{
    var t_dir = point_direction(x, y, obj_player.x, obj_player.y);
    if(angle_difference(direction, t_dir) > 0)
    {
        direction += -5;
    }else if(angle_difference(direction, t_dir) < 0)
    {
        direction += 5;
    }
} 
