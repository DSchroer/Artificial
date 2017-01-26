///debug_draw()

for(var i = 0; i < ds_list_size(display_lines); i++)
{
    draw_text(0, (i * 15) + base_y, ds_list_find_value(display_lines, i));
}

ds_list_clear(display_lines);
