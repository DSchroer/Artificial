///shud_scream()

speed = 15;

if(sm_ticks() > 5)
{
    attack_gun(scream, x, y, direction, self);
    sm_set_state("turn");
}