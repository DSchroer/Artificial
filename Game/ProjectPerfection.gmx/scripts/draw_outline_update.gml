///draw_outline_update(sprite)
var spr = argument0;

var sprite_scale = shader_get_uniform(sdr_world, "sprite_size");
var sprite_uvs = shader_get_uniform(sdr_world, "sprite_uvs");

var tex;
var uvs;
if(surface_exists(spr))
{
    tex = surface_get_texture(spr);
    uvs[0] = 0.0;
    uvs[1] = 0.0;
    uvs[2] = 0.5;
    uvs[3] = 0.5;
    uvs = sprite_get_uvs(spr, image_index);
}else{
    tex = sprite_get_texture(spr, image_index);
    uvs = sprite_get_uvs(spr, image_index);
}

shader_set_uniform_f_array(sprite_uvs, uvs);

tex_h = texture_get_texel_height(tex);
tex_w = texture_get_texel_width(tex);

shader_set_uniform_f(sprite_scale, tex_w, tex_h);
