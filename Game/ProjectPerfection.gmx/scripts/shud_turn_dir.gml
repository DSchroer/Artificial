///shud_turn_dir(direction, speed)
var dir = argument0;
var sp = argument1;

if(angle_difference(direction, dir) > 0)
{
    direction -= sp;
}else if(angle_difference(direction, dir) < 0)
{
    direction += sp;
}
