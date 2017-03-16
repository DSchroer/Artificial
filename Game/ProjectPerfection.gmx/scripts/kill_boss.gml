///kill_boss(number)
var number = argument0;

with(obj_progress)
{
    if(boss < (number) && boss >= (number - 1))
    {
        boss++;
    }
}
