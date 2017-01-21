///entity_dampening()

var max_speed = 8;
if(speed > max_speed)
{
    speed = max_speed;
}

if(speed <= 1)
{
    speed = 0;
}
else
{
    speed -= 1;
}
