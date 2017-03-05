///kill_boss(number)
var number = argument0;

with(obj_progress)
{
    if(boss < (number * 2) && boss >= (number - 1) * 2)
    {
        boss++;
    }
}
