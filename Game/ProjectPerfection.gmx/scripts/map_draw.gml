////map_draw()
var xscale = view_wview / view_wport;
var yscale = view_hview / view_hport;

shader_set(sdr_blend_shadow);
draw_set_blend_mode_ext( bm_dest_color, bm_src_color );
draw_surface_ext(lightSurface,view_xview,view_yview, xscale, yscale, 0, c_white, 1);
draw_set_blend_mode( bm_normal );
shader_reset();


