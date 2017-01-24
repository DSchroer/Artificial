///entity_dampening()

if(speed > max_movement_speed)
{
    speed = max_movement_speed;
}

if(speed <= 1)
{
    speed = 0;
}
else
{
    speed -= 1;
}
