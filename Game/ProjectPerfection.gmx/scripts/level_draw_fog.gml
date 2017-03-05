///level_draw_fog

if(surface_exists(fog_surface))
{
    texture_set_interpolation(false);
    draw_surface_ext(fog_surface, 0, 0, 64, 64, 0, c_white, 1);
}


