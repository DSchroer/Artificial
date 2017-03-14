///ui_draw_death_text()

if(dead)
{
    // Draw the death fog
    var radius = max(0, min(display_get_gui_width() / 2, display_get_gui_height() / 2) * 0.75 * (death_animation_time / death_animation_time_max));
    death_animation_time--;
    
    var death_fog = surface_create(display_get_gui_width(), display_get_gui_height());
    surface_set_target(death_fog);
    draw_clear(c_black);
        
    draw_set_blend_mode(bm_subtract);
    draw_set_color(c_white);
    draw_set_alpha(1);
    
    draw_set_circle_precision(64);
    draw_circle(ui_world_to_gui_x(x - sprite_get_xoffset(spr_player) + sprite_get_width(spr_player) / 2), ui_world_to_gui_y(y - sprite_get_yoffset(spr_player) + sprite_get_height(spr_player) / 2), radius, false);
    draw_set_circle_precision(24);

    surface_reset_target();
    draw_set_blend_mode(bm_normal);
    draw_set_alpha(1);
    
    texture_set_interpolation(false);
    draw_surface_ext(death_fog, 0, 0, 1, 1, 0, c_white, 1);
    
    
    surface_free(death_fog);
    
    
    // Draw the death text    
    if(obj_progress.tutorial > 101)
    {
        var width = display_get_gui_width();
        var height = display_get_gui_height();
    
        var message = "The Dungeon Defeated You";
        var scale = 3;        
        var xp = (width - string_width(message) * scale) / 2;
        var yp = 150;
        draw_text_transformed_color(xp, yp, message, scale, scale, 0, c_red, c_red, c_red, c_red, 1);
        
        message = "Preparing for reconstruction";
        scale = 2;        
        xp = (width - string_width(message) * scale) / 2;
        yp += 60;
        draw_text_transformed_color(xp, yp, message, scale, scale, 0, c_white, c_white, c_white, c_white, 1);
    }

}
else
{
    death_animation_time = 0;
    death_animation_time_max = 0;
}
