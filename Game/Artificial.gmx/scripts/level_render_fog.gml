///level_render_fog()
if(!surface_exists(fog_surface))
{
    fog_surface = surface_create(width, height);
    for(var i = 0; i < ds_list_size(fog_rendered_list); i++)
    {
        ds_list_replace(fog_rendered_list, i, 0);
    }
    surface_set_target(fog_surface);
    draw_clear(c_black);
}else{
    surface_set_target(fog_surface);
}

draw_set_blend_mode(bm_subtract);
draw_set_color(c_white);
draw_set_alpha(0.1);
for(var i = 0; i < ds_list_size(room_list); i++)
{
    var fog = ds_list_find_value(fog_list, i);
    if(fog == 0)
    {
        continue;
    }
    var rx = ds_list_find_value(room_x_list, i);
    var ry = ds_list_find_value(room_y_list, i);
    var rw = ds_list_find_value(room_w_list, i);
    var rh = ds_list_find_value(room_h_list, i);
    
    draw_rectangle(rx, ry, rx + rw - 1, ry + rh - 1, false);
}

surface_reset_target();
draw_set_blend_mode(bm_normal);
draw_set_alpha(1);
