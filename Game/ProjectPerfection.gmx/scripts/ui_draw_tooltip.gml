///ui_draw_tooltip(x, y, lines, line_args)

// Arguments
var xpos = argument0;
var ypos = argument1;
var lines = argument2;
var line_args = argument3;

// Bookkeeping for background things
var screen_width = display_get_gui_width();
var screen_height = display_get_gui_height();
var background = spr_tooltip;
var scale_factor_x = 2;
var scale_factor_y = 1;
var border_size_x = 32;
var border_size_y = 16;
var space_width = string_width(" ");
var text_height = string_height(" ");

// Do the best we can to closely fit the tooltip background to the text
var contents_width = 0;
for(var i = 0; i < array_length_1d(lines); i++)
{
    contents_width = max(contents_width, string_width(lines[i]));
}
var contents_height = (array_length_1d(lines) + 1) * text_height;    
scale_factor_x = (contents_width + border_size_x * 2) / sprite_get_width(background);
scale_factor_y = (contents_height + border_size_y * 2) / sprite_get_height(background);

// Force the tooltip fully on screen, if applicable
if(xpos + contents_width + border_size_x * 2 > screen_width)
{
    xpos = screen_width - contents_width - border_size_x * 2;
}
if(ypos + contents_height + border_size_y * 2 > screen_height)
{
    ypos = screen_height - contents_height - border_size_y * 2;
}

// Draw background
draw_sprite_ext(background, -1, xpos, ypos, scale_factor_x, scale_factor_y, 0, c_white, 1);

// Draw the text, line by line
var linex = xpos + border_size_x;
var liney = ypos + border_size_y;
var line_index = 0;
while(line_index < array_length_1d(lines))
{
    var line = lines[line_index];
    var args = line_args[line_index];
    if(is_string(args) && string_char_at(args, 0) == "|")
    {
        ui_set_colour(args);
    }
            
    draw_text(linex, liney, line);

    line_index += 1;   
    liney += text_height;
}





