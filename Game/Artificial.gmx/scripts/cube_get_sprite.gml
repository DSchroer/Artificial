//cube_get_sprite()

if(obj_progress.cube_parts == 0)
{
    return spr_cube_hub1;
}
else if(obj_progress.cube_parts == 1)
{
    return spr_cube_hub2;
}
else if(obj_progress.cube_parts == 2)
{
    return spr_cube_hub3;
}
else if(obj_progress.cube_parts == 3)
{
    return spr_cube_hub4;
}

return spr_cube_hub5;

