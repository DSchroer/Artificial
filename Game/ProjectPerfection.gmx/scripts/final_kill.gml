
speed = 0;
if(sm_ticks() == 0)
{
    sm_set_var("health", current_health);
}else if(sm_ticks() > 120)
{
    if(sm_ticks() > 120 && (current_health / max_health) > 0.05)
    {
        enemy_attack(obj_player, kill);
    }else if(sm_ticks() > 240)
    {
        enemy_attack(obj_player, kill);
    }
}else if(sm_get_var("health") - current_health > 50)
{
    if((current_health / max_health) > 0.05)
    {
        sm_set_state(sm_state_pop());
    }
}
