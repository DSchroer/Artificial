
speed = 0;
if(sm_ticks() == 0)
{
    var base = point_direction(x, y, obj_player.x, obj_player.y) + 45;
    sm_set_var("base", base);
    sm_set_var("angle", 0);
    if(random(2) < 1)
    {
        sm_set_var("dir", 1);
    }else{
        sm_set_var("dir", -1);
    }
}else if(sm_get_var("angle") > 90 || sm_get_var("angle") < -90)
{
    sm_set_state(sm_state_pop());
}else if(sm_ticks() > 30){
    sm_set_var("angle", sm_get_var("angle") + sm_get_var("dir"));
}

var angle = sm_get_var("base") + sm_get_var("angle");
attack_gun(lazer, x, y, angle, self);
attack_gun(lazer, x, y, angle + 90, self);
attack_gun(lazer, x, y, angle + 180, self);
attack_gun(lazer, x, y, angle - 90, self);
