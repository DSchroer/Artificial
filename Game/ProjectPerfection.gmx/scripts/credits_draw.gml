///credits_draw()
///credits_draw()
draw_set_colour(c_white);
var width = display_get_gui_width();
for(var i = 0; i < ds_list_size(lines); i++)
{
    var text = ds_list_find_value(lines, i);
    var offset_y = i * line_space;
    var scale = 1.0;
    if(ds_list_find_value(titles_index, i))
    {      
        scale = 1.5;
    }
    
    var xp = (width - string_width(text) * scale) / 2;    
    draw_text_transformed(xp, y + offset_y, text, scale, scale, 0);
}
