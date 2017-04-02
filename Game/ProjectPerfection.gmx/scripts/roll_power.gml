///roll_power()

var progress = obj_progress.progress;

if(progress <= 3)
{
    return (progress - 1) * 10 + random_range(0, 10);
}
else if(progress >= 4 && progress <= 7)
{
    return (progress + 0.5) * 10 + random_range(0, 10);
}
else if(progress >= 8 && progress <= 11)
{
    return (progress + 2.25) * 10 + random_range(0, 16);
}
else
{
    return (progress + 4.5) * 10 + random_range(0, 22);
}



