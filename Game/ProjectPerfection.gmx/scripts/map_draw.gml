///map_draw(x, y)
if(is_paused())
{
    exit;
}

if(!surface_exists(main_surface))
{
    main_surface = surface_create(map_diameter, map_diameter);
}

surface_set_target(main_surface);
draw_clear(c_black);
if(level != -1 && instance_exists(level))
{
    if(map_texture == -1 || level.fog_changed)
    {
        map_render_map_texture();
    }
    

    with(level)
    {
        if(player_exists())
        {
            other.center_x = level_position_x(obj_player.x);
            other.center_y = level_position_y(obj_player.y);
        }
    }

    draw_sprite(map_texture, 0, (map_diameter / 2) - (center_x * map_size), (map_diameter / 2) - (center_y * map_size));
}
//draw_circle_colour((map_diameter / 2), (map_diameter / 2), 3, c_red, c_red, false);
surface_reset_target();

//shader_set(sdr_circle);
draw_sprite(spr_map_border, -1, display_get_gui_width() - 30 - map_diameter, 10);
draw_surface(main_surface, display_get_gui_width() - 22 - map_diameter, 18);
shader_reset();



