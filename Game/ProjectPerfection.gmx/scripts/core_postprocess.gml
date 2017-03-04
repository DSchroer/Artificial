if(!surface_exists(self.redraw))
{
self.redraw = surface_create(l_width, l_height);
}

shader_set(sdr_post);

var msize;
msize = shader_get_uniform(sdr_post,"mapSize");
shader_set_uniform_f(msize,(1.0 / self.map_size));

surface_set_target(self.redraw);
draw_clear_alpha(c_white,0);
draw_surface(self.posts,0,0);
surface_reset_target();
shader_reset();
