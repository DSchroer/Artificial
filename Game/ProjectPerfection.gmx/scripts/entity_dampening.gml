///entity_dampening()

if(speed > max_movement_speed)
{
    speed = max_movement_speed;
}

if(!movement_this_frame)
{
    if(speed <= friction_coeff * max_movement_speed)
    {
        speed = 0;
    }
    else
    {
        speed -= friction_coeff * max_movement_speed;
    }
}

