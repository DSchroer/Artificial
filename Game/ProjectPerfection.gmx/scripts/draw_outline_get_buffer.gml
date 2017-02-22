///draw_outline_get_buffer()
vertex_format_begin();
vertex_format_add_position();
vertex_format_add_colour();
vertex_format_add_textcoord();
vertex_format_add_custom(vertex_type_float4, vertex_usage_colour);
return vertex_format_end();
