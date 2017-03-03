////map_draw()
if(!surface_exists(lightSurface))
{
    lightSurface = surface_create(view_wport, view_hport);
}

if(surface_get_height(lightSurface) != surface_get_height(application_surface) || surface_get_width(lightSurface) != surface_get_width(application_surface))
{
    surface_resize(lightSurface, surface_get_width(application_surface), surface_get_height(application_surface));
} 

surface_set_target(lightSurface);
draw_clear(self.color);

var l;
l = ds_map_find_value(instance_find(obj_light_var,0).map_layer,string(layer));

var xscale = view_wview / view_wport;
var yscale = view_hview / view_hport;

for(i = 0; i < ds_list_size(l); i++)
{
    var obj;
    obj = ds_list_find_value(l, i);
    
    if(!obj.in_view)
    {
        continue;
    }
    
    with(obj)
    {
        if(self.layer == other.layer)
        {
            if(!surface_exists(self.redraw))
            {
                self.redraw = surface_create(l_width, l_height);
                self.rendered = false;
            }
            
            if(!self.rendered || self.collision || self.dynamic)
            {
                core_caster();
                core_distance();
                core_reductions();
                core_shadow();
                core_postprocess();
                self.rendered = true;
            }
             
            draw_set_blend_mode( bm_add );
            draw_surface_ext(self.redraw,(self.x-view_xview) / xscale,(self.y-view_yview) / yscale,self.scale / xscale,self.scale / yscale,0,c_white,1.0);
        }
    }
}
surface_reset_target();

shader_set(sdr_blend_shadow);
draw_set_blend_mode_ext( bm_dest_color, bm_src_color );
draw_surface_ext(lightSurface,view_xview,view_yview, xscale, yscale, 0, c_white, 1);
draw_set_blend_mode( bm_normal );
shader_reset();


