///dym_explode()

speed = 0;
if(sm_ticks() == 60)
{
    with(obj_dym_part)
    {   
        attack_gun(other.rock, x, y, point_direction(x, y, other.x, other.y) + 180, self, false, false);
        instance_destroy();
    }
}

if(sm_ticks() > 100)
{
    sm_set_state("idle");
}

rock_angle = (rock_angle + 3) % 360;
