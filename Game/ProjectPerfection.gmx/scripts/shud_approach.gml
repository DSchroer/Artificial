///shud_approach()

speed = 10;

if(sm_ticks() == 0)
{
    sm_set_var("attack", random(4));
}

var player_distance = point_distance(x, y, obj_player.x, obj_player.y);
var attack = sm_get_var("attack");
if(player_distance < 600 && area_contains(obj_shuud_attack_area, self))
{
    if(attack < 1)
    {
        sm_set_state("scream");
    }else if(attack < 2)
    {
        sm_set_state("beam");
    }else{
        speed = 15;
    }
}

if(!sm_has_var("tmr"))
{
    if(player_distance > 200)
    {
        var t_dir = point_direction(x, y, obj_player.x, obj_player.y);
        if(angle_difference(direction, t_dir) > 0)
        {
            sm_set_var("dir", -1);
        }else if(angle_difference(direction, t_dir) < 0)
        {
            sm_set_var("dir", 1);
        }else{
            sm_set_var("dir", 0);
        }
    }else{
        sm_set_var("tmr", 60);
    }
}else{
    sm_set_var("tmr", sm_get_var("tmr") - 1);
    if(sm_get_var("tmr") < 0)
    {
        sm_set_state("retreat");
    }
}

direction += sm_get_var("dir");
attack_gun(mele, x, y, 0, self);
