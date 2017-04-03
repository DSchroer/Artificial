///fonts_get(name)
var name = argument0;
var font = undefined;
with(obj_fonts)
{
    font = ds_map_find_value(font_map, name);
}
return font;
