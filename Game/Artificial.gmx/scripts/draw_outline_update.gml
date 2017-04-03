///draw_outline_update(sprite, is_surface)
var spr = argument0;
var surface = argument1;

if(spr == noone)
{
    exit;
}

var sprite_scale = shader_get_uniform(sdr_outline, "sprite_size");

var tex_h = 0.005;
var tex_w = 0.005;

if(surface)
{   
    var tex = surface_get_texture(spr);
    tex_h = texture_get_texel_height(tex);
    tex_w = texture_get_texel_width(tex);
}else{
    var tex = sprite_get_texture(spr, 0);
    tex_h = texture_get_texel_height(tex);
    tex_w = texture_get_texel_width(tex);
}

shader_set_uniform_f(sprite_scale, tex_h, tex_w, 1.0);
