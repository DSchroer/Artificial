
speed = 0;
if(sm_ticks() == 0)
{
    sm_set_var("angle", 0);
}else if(sm_get_var("angle") > 90)
{
    sm_set_state(sm_state_pop());
}if(sm_ticks() % 5 == 0){
    sm_set_var("angle", sm_get_var("angle") + 1);
    attack_gun(lazer, x, y, sm_get_var("angle"), self);
    attack_gun(lazer, x, y, sm_get_var("angle") + 90, self);
    attack_gun(lazer, x, y, sm_get_var("angle") + 180, self);
    attack_gun(lazer, x, y, sm_get_var("angle") - 90, self);
}else{
    sm_set_var("angle", sm_get_var("angle") + 1);
}
