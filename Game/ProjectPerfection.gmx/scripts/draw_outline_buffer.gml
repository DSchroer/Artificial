///draw_outline_buffer()

sprite_index = spr_world_rifle1;
v_buff = vertex_create_buffer();
vertex_begin(v_buff, draw_outline_get_buffer());

tex_h = texture_get_texel_height(sprite_get_texture(sprite_index, image_index));
tex_w = texture_get_texel_width(sprite_get_texture(sprite_index, image_index));

var left = x - (sprite_get_xoffset(sprite_index) * image_xscale);
var top = y - (sprite_get_yoffset(sprite_index) * image_yscale);
var right = left + (sprite_width * image_xscale);
var bottom = top + (sprite_height * image_yscale);
var uv = sprite_get_uvs(sprite_index, image_index);

vertex_position(v_buff, left, top);
vertex_colour(v_buff, c_white, 1);
vertex_texcoord(v_buff, uv[0], uv[1]);
vertex_float4(v_buff, uv[0], uv[1], uv[2], uv[3]);

vertex_position(v_buff, left, bottom);
vertex_colour(v_buff, c_white, 1);
vertex_texcoord(v_buff, uv[0], uv[3]);
vertex_float4(v_buff, uv[0], uv[1], uv[2], uv[3]);

vertex_position(v_buff, right, top);
vertex_colour(v_buff, c_white, 1);
vertex_texcoord(v_buff, uv[2], uv[1]);
vertex_float4(v_buff, uv[0], uv[1], uv[2], uv[3]);

vertex_position(v_buff, right, bottom);
vertex_colour(v_buff, c_white, 1);
vertex_texcoord(v_buff, uv[2], uv[3]);
vertex_float4(v_buff, uv[0], uv[1], uv[2], uv[3]);

vertex_end(v_buff);

shader_set(sdr_world);
var u = shader_get_uniform(sdr_world, "sprite_size");
shader_set_uniform_f(u, tex_w, tex_h);
vertex_submit(v_buff, pr_trianglestrip, sprite_get_texture(sprite_index, image_index));
shader_reset();
