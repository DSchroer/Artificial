///shud_beam()
speed = 5;

if(sm_ticks() > 60)
{
    sm_set_state("turn");
}
else if(sm_ticks() > 15)
{
    var t_dir = point_direction(x, y, obj_player.x, obj_player.y);
    shud_turn_dir(t_dir, 1);
    attack_gun(beam, x, y, direction, self);
}else{
    var t_dir = -point_direction(x, y, obj_player.x, obj_player.y);
    shud_turn_dir(t_dir, 1);
}
