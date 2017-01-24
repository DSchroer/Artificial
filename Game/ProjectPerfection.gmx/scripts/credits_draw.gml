///credits_draw()
for(var i = 0; i < ds_list_size(titles); i++)
{
    var offset_y = i * line_space;
    draw_text(x, y + offset_y, ds_list_find_value(titles, i));
}

for(var i = 0; i < ds_list_size(names); i++)
{
    var offset_y = i * line_space;
    draw_text(x + 150, y + offset_y, ds_list_find_value(names, i));
}
