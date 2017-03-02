
speed = 0;
if(sm_ticks() > 15)
{
    sm_set_state(sm_state_pop());
}else if(sm_ticks() % 5 == 0)
{
    enemy_attack(obj_player, bolt);
}
