///eg_idle()

if(point_distance(x, y, obj_player.x, obj_player.y) < 500)
{
    sm_set_state("approach");
}

speed = 0;
